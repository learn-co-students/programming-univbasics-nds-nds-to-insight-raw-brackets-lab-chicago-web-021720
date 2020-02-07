$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'

def directors_totals(nds)
  result = {}
  row_index = 0
  while row_index < directors_database.length do
    name = directors_database[row_index][:name]
    result[name] = 0
    gross_index = 0
      while gross_index < directors_database[row_index][:movies].length do
        #binding.pry
        result[name] += directors_database[row_index][:movies][gross_index][:worldwide_gross]         
        gross_index += 1
      end
    row_index += 1
  end
result
end
