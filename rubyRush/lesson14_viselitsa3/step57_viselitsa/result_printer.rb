class ResultPrinter

  def initialize
    @status_images = []

    current_path = File.dirname(__FILE__)
    counter = 0

    while counter <= 7 do
      file_name = current_path + "/images/#{counter}.txt"

      if File.exist?(file_name)
        f = File.new(file_name, 'r:UTF-8')
        @status_images << f.read
        f.close
      else
        @status_images << "\n[ image not found ]\n"
      end

      counter += 1
    end

  end

  def print_status(game)
      cls
  
      puts "\nСлово: #{get_word_for_print(game.letters, game.good_letters)}"
  
      puts "Ошибки: #{game.bad_letters.join(', ')}"
  
      print_viselitsa(game.errors)
  
      if game.status == -1
        puts "\nВы проиграли :(\n"
        puts 'Загаданное слово было: ' + game.letters.join('')
        puts
      elsif game.status == 1
        puts "Поздравляем, вы выиграли!\n\n"
      else
        puts 'У вас осталось ошибок: ' + (7 - game.errors).to_s
      end
    end
  
    def get_word_for_print(letters, good_letters)
      result = ''
  
      for item in letters do
        if good_letters.include?(item)
          result += item + ' '
        else
          result += '__ '
        end
      end
  
      return result
    end
  
    def print_viselitsa(errors)
      puts @status_images[errors]
    end
  
    def cls
      system('clear') || system('cls')
    end
  end