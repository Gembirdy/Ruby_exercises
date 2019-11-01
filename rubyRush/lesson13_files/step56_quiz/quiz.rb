current_path = File.dirname(__FILE__)
file_path_questions = current_path + '/data/Questions.txt'
file_path_answers = current_path + '/data/Answers.txt'
file_path_variants = current_path + '/data/Variants.txt'


if File.exist?(file_path_questions)


    q = File.new(file_path_questions, 'r:UTF-8')
    questions = q.readlines
    q.close
else
    puts 'no such file questions'
end

if File.exist?(file_path_answers)


    a = File.new(file_path_answers, 'r:UTF-8')
    answers = a.readlines
    a.close
else
    puts 'no such file answers'
end

if File.exist?(file_path_variants)


    v = File.new(file_path_variants, 'r:UTF-8')
    variants = v.readlines
    v.close
else
    puts 'no such file variants'
end

i = 0
correct_answers_counter = 0
user_answers = []
while i < questions.size do
    puts questions[i]
    puts variants[i]
    user_answers[i] = gets.to_s
    if user_answers[i].downcase.chr == answers[i].chr
        puts 'Правильно!'
        correct_answers_counter += 1
    else
        puts "неа, правильный ответ - #{answers[i]}" 
    end

    i += 1
end

puts
puts "#{correct_answers_counter} правильных ответов из #{questions.size}"