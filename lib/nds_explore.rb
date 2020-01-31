$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
# Call the method directors_database to retrieve the NDS

def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  require 'pp'
  pp nds
end

def print_first_directors_movie_titles

  row_index = 0
  while row_index < directors_database.length do
      inner_index = 0
      while inner_index < directors_database[row_index][:movies].length do
        if directors_database[row_index][:name].include?("Stephen Spielberg")
        spielberg_movies = puts directors_database[row_index][:movies][inner_index][:title]
        end
        inner_index += 1
      end
      row_index += 1
  end
  spielberg_movies
end
