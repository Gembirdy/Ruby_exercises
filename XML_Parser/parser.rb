# source 'https://rubygems.org'
#
# gem 'rubyXL'

require 'rubyXL'

workbook = RubyXL::Parser.parse 'd:/ruby/xml_parser/FileExcell.xlsx'
worksheets = workbook.worksheets
puts "Found #{worksheets.count} worksheets"

worksheets.each do |worksheet|
  puts "Reading: #{worksheet.sheet_name}"
  num_rows = 0
  worksheet.each do |row|
    row_cells = row.cells.map{ |cell| cell.value }
    num_rows += 1
    puts row_cells.join " "
  end
  puts "Read #{num_rows} rows"
end
