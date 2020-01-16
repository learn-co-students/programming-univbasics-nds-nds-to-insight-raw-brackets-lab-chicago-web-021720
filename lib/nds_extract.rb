$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!

  hash = {}
  row_index = 0 
  while row_index < directors_database.length do
    num_of_movies = 0
    gross = 0
    while num_of_movies < directors_database[row_index][:movies].length do
      gross += directors_database[row_index][:movies][num_of_movies][:worldwide_gross]
      num_of_movies += 1 
    end
    director = directors_database[row_index][:name]
    hash[director] = gross
    row_index += 1
  end
  hash
end