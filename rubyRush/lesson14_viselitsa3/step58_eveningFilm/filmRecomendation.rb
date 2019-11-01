current_path = File.dirname(__FILE__)
file_path = current_path + '/data/recomendations.txt'

if File.exist?(file_path)
    f = File.new(file_path, 'r:UTF-8')
    films = f.readlines
    f.close

    number = rand(films.length)

    if number % 2 == 1
        number -= 1
    end

    puts "today recomendation is: #{films[number]}"
    puts "description: #{films[number + 1]}"
else
    puts "can't find the file"
end