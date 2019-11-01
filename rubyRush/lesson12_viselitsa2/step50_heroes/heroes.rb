puts 'врага какого персонажа вы хотите узнать?'
name = gets.chomp.downcase


case name
    when 'бэтмен', 'batman'
        puts 'Джокрер!'
    when 'шерлок', 'шерлок холмс', 'sherlock'
        puts 'Мариарти!'
    when 'буратино'
        puts 'Карабас-Барабас!'
    else
        puts 'не удалось найти врага'
end
