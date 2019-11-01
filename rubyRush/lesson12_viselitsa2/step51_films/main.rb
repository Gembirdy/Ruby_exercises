require_relative 'films.rb'

puts 'what is ur favorite movie producer: '
producer_name = gets.chomp

films = []

3.times do
    puts "any film by #{producer_name}: "
    film_by_prod = gets.encode("UTF-8")
    film = Film.new(producer_name, film_by_prod)
    films << film
end 

film = films.sample
puts "recomend u to watch #{film.movie_title}"
puts "By #{film.producer}" 