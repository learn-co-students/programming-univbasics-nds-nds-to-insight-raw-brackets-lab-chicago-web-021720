$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
 # pp nds
  result = {}   # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  ri = 0 #row index

  while ri < nds.length do
    ci = 0 #column index
    name = ""
    total = 0
      while ci < nds[ri][:movies].length do 
        total += nds[ri][:movies][ci][:worldwide_gross]
        name = nds[ri][:name]
        result[name] = total
        ci += 1
      end 
    ri += 1
  end 
  result
end
