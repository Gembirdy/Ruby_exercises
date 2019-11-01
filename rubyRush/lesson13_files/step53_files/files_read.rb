if File.exist?('/home/gembird/Ruby/rubyRush/lesson13_files/data/quotes.txt')
    f = File.new('/home/gembird/Ruby/rubyRush/lesson13_files/data/quotes.txt', 'r:UTF-8')

    
    content = f.read
    puts content
else
    puts 'no such file'

end