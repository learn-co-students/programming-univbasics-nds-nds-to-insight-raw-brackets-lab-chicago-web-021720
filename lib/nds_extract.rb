$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
pp directors_database
def directors_totals(nds)
  result = {}
  row_index = 0
  while row_index < directors_database.length do
    total = 0
    column_index = 0
    director = directors_database[row_index][:name]
    while column_index < directors_database[row_index][:movies].length do
      total += directors_database[row_index][:movies][column_index][:worldwide_gross]
      column_index += 1
    end
    result[director] = total
  row_index += 1
  end
  result
end
