$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
#require 'pry'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  returnhash = {}

  nds.each do |elem|
    moviesum = elem[:movies].reduce(0) do |sum, element|
      sum + element[:worldwide_gross]
    end
    returnhash[elem[:name]] = moviesum
  end
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
  returnhash
end
