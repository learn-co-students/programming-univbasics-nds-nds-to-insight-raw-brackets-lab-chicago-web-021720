$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp' # Let's pretty print this beeyotch to see what looks like!

pp directors_database

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  
  
  result = {}
  for dude in nds do
    # total_sum = 0
    result[dude[:name]] = 0
    for movie in dude[:movies] do
      # total_sum += movie[:worldwide_gross]
      result[dude[:name]] += movie[:worldwide_gross]
    end
    # result[dude[:name]] = total_sum
  end
  
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  
  return result
  
end