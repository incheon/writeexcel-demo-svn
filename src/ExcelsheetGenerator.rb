class ExcelsheetGenerator

  def initialize(changeset, sheetname)
    @changeset = changeset
    @sheetname = sheetname
    @worksheet
  end

  def makeLogSheet
    @workbook = WriteExcel.new("../xls/#{@name}.xls")
    # Appedn worksheet
    @worksheet = @workbook.add_worksheet
    decorateXLS();
    @workbook.close  
  end

  private
  
  def decorateXLS
    @workbook

    # Set format
    format = @workbook.add_format # Add a format
    format.set_bold()
    format.set_color('red')
    format.set_align('center')

    # 文字列を書式指定有りと無しの２形式で格納。行・桁でセルを指定。
    col = row = 0
    @worksheet.write(row, col, 'Hi Excel!', format)
    @worksheet.write(1,   col, 'Hi Excel!')

    # 数値と数式を格納。A1形式でセルを指定。
    @worksheet.write('A3', 1.2345)
    @worksheet.write('A4', '=SIN(PI()/4)')

    # 作成を完了し、エクセルファイルを書き出し。

  end
  
end 