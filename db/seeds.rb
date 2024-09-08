# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Seed the RottenPotatoes DB with some movies.
more_movies = [
  {:title => 'My Neighbor Totoro', :rating => 'G',
    :release_date => '16-Apr-1988'},
  {:title => 'Green Book', :rating => 'PG-13',
    :release_date => '16-Nov-2018'},
  {:title => 'Parasite', :rating => 'R',
    :release_date => '30-May-2019'},
  {:title => 'Nomadland', :rating => 'R',
    :release_date => '19-Feb-2021'},
  {:title => 'CODA', :rating => 'PG-13',
    :release_date => '13-Aug-2021'},
  {:title => 'GOAT', :rating => 'U/A',
    :release_date => '5-Sep-2024'},
  {:title => 'MASTER', :rating => 'U/A',
    :release_date => '18-Aug-2022'},
  {:title => 'GHILLI', :rating => 'U',
    :release_date => '18-Oct-2005'},
  {:title => 'BEAST', :rating => 'U/A',
    :release_date => '18-Dec-2023'}
  
]


def update_or_create_movie(attributes)
    movie = Movie.find_by(title: attributes[:title])
    
    if movie
      movie.update(attributes)
    else
      Movie.create!(attributes)
    end
end
  
more_movies.each do |movie|
  update_or_create_movie(movie)
end
