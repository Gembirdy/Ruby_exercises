user_file = ARGV[0]
if user_file == nil
    user_file = 'text.txt'
end 

current_path = File.dirname(__FILE__)
file_path = current_path + '/data/' + user_file
if File.exist?(file_path)
    f = File.new(file_path, 'r:UTF-8')
    lines = f.readlines

    print "opened file: #{user_file}\n"
    empty_lines = []
    i = 0
    while i < lines.length do
        if lines[i] == "\n"
            empty_lines << lines[i]
        end
        
        i += 1
    end
    print 'total lines: ' + (lines.count - empty_lines.count).to_s
    print "\nempty lines: " + empty_lines.size.to_s

    puts
    puts
    puts 'last 3 lines: '
    i = -1
    while i != (-4) do
        puts "#{-i} from the end: " + lines[i].to_s
        i -= 1
    end

    f.close
else
    puts 'didn\'nt find the file'
end