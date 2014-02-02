class ChengesetGenerator

  ### [SVN] ###
  # tmp =  `cd C:\\xampp\\htdocs\\ecofa & svn log -l 3 -v`.split("\n")
  # tmp.each do |ele|
  # end

  # set revisions to local var
  def initialize(revs)
    @revs = revs
    @ini = IniFile.load("./conf.ini")
  end

  # method to get changeset
  def getChangeset()
    stdout = `#{getCmdChangeset()}`
    splitStdoutToChangeset(stdout)
  end

  private

  # concat command to get change set
  def getCmdChangeset()
    cmd = getCmdCdRepo

    @revs.each do |rev|
      cmd += getCmdLog(rev)
    end
  end

  # split STDOUT to hash map of changeset
  def splitStdoutToChangeset(stdout)

    stdout.each do |line|
      changeset = {:rev => rev :path => path :status => status}
    end

  end

  # get command to go to repo root
  def getCmdCdRepo()
    path = @ini['repo']['path']
  end

  # get command to get svn log
  def getCmdLog(rev)

  end

end