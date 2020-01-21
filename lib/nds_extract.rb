$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

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
  
  index = 0
  while index < nds.length do
    
    dir_name = nds[index][:name]  
    hash[dir_name] = 0   # Initialize Director name key
    
    dir_movies_list = nds[index][:movies]
    
    movies_index = 0
    while movies_index < dir_movies_list.length do
      
      hash[dir_name] += dir_movies_list[movies_index][:worldwide_gross]
      
      movies_index += 1
    end
    
    index += 1
    
  end
  
  hash

end
