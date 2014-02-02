require 'inifile'
require 'writeexcel'
require 'ChengesetGenerator'
require 'ExcelsheetGenerator'

# set revision to achieve log
rev = Array.new()
ARGV.each do |arg|
  rev.push(arg) if arg @= /\\d{1,}/
end

# Get SVN log
cg = ChengesetGenerator.new(rev)
cs = cg.getChangeset()

# and make Excel workbook obj
eg = ExcelsheetGenerator.new(cs, "test")
eg.makeLogSheet()
