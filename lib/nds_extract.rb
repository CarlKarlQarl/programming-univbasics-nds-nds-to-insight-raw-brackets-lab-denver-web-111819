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
  
  nds.length.times do |cycle_directors|
    total_gross = 0
    nds[cycle_directors][:movies].length.times do |cycle_titles|
      total_gross += nds[cycle_directors][:movies][cycle_titles][:worldwide_gross]
    end
    result[nds[cycle_directors][:name]][:total_gross]
  end
  
  return result
end

#pp directors_database[0] # directors
#pp directors_database[0][:movies] #movies
#pp directors_database[0][:movies][0] #single title
#pp directors_database[0][:movies][0][:worldwide_gross] #gross