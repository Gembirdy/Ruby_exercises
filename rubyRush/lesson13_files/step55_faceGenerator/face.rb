common_path = '/home/gembird/Ruby/rubyRush/lesson13_files/step55_faceGenerator/templates/'

file_path_nose = common_path + 'nose.txt'
file_path_mouth = common_path + 'mouth.txt'
file_path_forehead = common_path + 'forehead.txt'
file_path_eyes = common_path + 'eyes.txt'

if File.exist?(file_path_forehead)
    f_forehead = File.new(file_path_forehead, 'r:UTF-8')
    content = f_forehead.readlines
    puts content.sample
else
    puts 'no such file f_forehead'
end

if File.exist?(file_path_eyes)
    f_eyes = File.new(file_path_eyes, 'r:UTF-8')
    content = f_eyes.readlines
    puts content.sample
else
    puts 'no such file f_eyes'
end


if File.exist?(file_path_nose)
    f_nose = File.new(file_path_nose, 'r:UTF-8')
    content = f_nose.readlines
    puts content.sample
else
    puts 'no such file f_nose'
end


if File.exist?(file_path_mouth)
    f_mouth = File.new(file_path_mouth, 'r:UTF-8')
    content = f_mouth.readlines
    puts content.sample
else
    puts 'no such file f_mouth'
end