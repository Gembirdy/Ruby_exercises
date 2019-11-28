time = Time.now
current_path = File.dirname(__FILE__)

common_path = '/home/gembird/Ruby/rubyRush/lesson13_files/step55_faceGenerator/templates/'

file_path_nose = common_path + 'nose.txt'
file_path_mouth = common_path + 'mouth.txt'
file_path_forehead = common_path + 'forehead.txt'
file_path_eyes = common_path + 'eyes.txt'

if File.exist?(file_path_forehead)
    f_forehead = File.new(file_path_forehead, 'r:UTF-8')
    content = f_forehead.readlines
    forehead_for_file = content.sample
    f_forehead.close
else
    puts 'no such file f_forehead'
end

if File.exist?(file_path_eyes)
    f_eyes = File.new(file_path_eyes, 'r:UTF-8')
    content = f_eyes.readlines
    eyes_for_file = content.sample
    f_eyes.close
else
    puts 'no such file f_eyes'
end


if File.exist?(file_path_nose)
    f_nose = File.new(file_path_nose, 'r:UTF-8')
    content = f_nose.readlines
    nose_for_file = content.sample
    f_nose.close
else
    puts 'no such file f_nose'
end


if File.exist?(file_path_mouth)
    f_mouth = File.new(file_path_mouth, 'r:UTF-8')
    content = f_mouth.readlines
    mouth_for_file = content.sample
    f_mouth.close
else
    puts 'no such file f_mouth'
end


time_string = time.strftime("%H:%M")
file_name = time.strftime("%Y-%m-%d-") + time_string

file = File.new(current_path + "/face_" + file_name + '.txt', 'a:UTF-8')

file.print(forehead_for_file, eyes_for_file, nose_for_file, mouth_for_file)
file.close