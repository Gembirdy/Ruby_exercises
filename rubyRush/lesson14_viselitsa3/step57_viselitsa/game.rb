class Game
    # Конструктор — вызывается всегда при создании объекта данного класса имеет
    # один параметр, в него нужно передавать при создании строку к загаданнмы
    # словом. Например, game = Game.new('молоко').
    def initialize(slovo)
      # Инициализируем переменные экземпляра. В @letters будет лежать массив букв
      # загаданного слова. Для того, чтобы его создать, вызываем метод get_letters
      # этого же класса.
      @letters = get_letters(slovo)
  
      # Переменная @errors будет хранить текущее количество ошибок, всего можно
      # сделать не более 7 ошибок. Начальное значение — 0.
      @errors = 0
  
      # Переменные @good_letters и @bad_lettes будут содержать массивы, хранящие
      # угаданные и неугаданные буквы. В начале игры они пустые.
      @good_letters = []
      @bad_letters = []
  
      # Специальная переменная-индикатор состояния игры (см. метод get_status)
      @status = 0
    end
  
    # Метод, который возвращает массив букв загаданного слова
    def get_letters(slovo)
      if slovo == nil || slovo == ''
        abort 'Для игры введите загаданное слово в качестве аргумента при ' \
          'запуске программы'
      end
  
      return slovo.encode('UTF-8').split('')
    end
  
    # Метод, возвращающий статус игры (геттер для @status)
    #
    #  0 – игра активна
    # -1 – игра закончена поражением
    #  1 – игра закончена победой
    def status
      return @status
    end
  
    # Основной метод игры "сделать следующий шаг". В качестве параметра принимает
    # букву, которую ввел пользователь. Основная логика взята из метода
    # check_user_input (см. первую версию программы).
    def next_step(bukva)
      # Предварительная проверка: если статус игры равен 1 или -1, значит игра
      # закончена и нет смысла дальше делать шаг. Выходим из метода возвращая
      # пустое значение.
      if @status == -1 || @status == 1
        return
      end
  
      # Если введенная буква уже есть в списке "правильных" или "ошибочных" букв,
      # то ничего не изменилось, выходим из метода.
      if @good_letters.include?(bukva) || @bad_letters.include?(bukva)
        return
      end
  
      if @letters.include?(bukva)
        # Если в слове есть буква запишем её в число "правильных" буква
        @good_letters << bukva
  
        # Дополнительная проверка — угадано ли на этой букве все слово целиком.
        # Если да — меняем значение переменной @status на 1 — победа.
        if @good_letters.uniq.sort == @letters.uniq.sort
          @status = 1
        end
      else
        # Если в слове нет введенной буквы — добавляем эту букву в массив
        # «плохих» букв и увеличиваем счетчик ошибок.
        @bad_letters << bukva
        @errors += 1
  
        # Если ошибок больше 7 — статус игры меняем на -1, проигрыш.
        if @errors >= 7
          @status = -1
        end
      end
    end
  
    # Метод, спрашивающий юзера букву и возвращающий ее как результат. В идеале
    # этот метод лучше вынести в другой класс, потому что он относится не только
    # к состоянию игры, но и к вводу данных.
    def ask_next_letter
      puts "\nВведите следующую букву"
  
      letter = ''
      while letter == ''
        letter = STDIN.gets.encode('UTF-8').chomp
      end
  
      # После получения ввода, передаем управление в основной метод игры
      next_step(letter)
    end
  
    # Методы, так называемые accessors или геттеры. Смысл каждого метода — только
    # предоставить доступ к внутренним переменным экземпляра класса. Без таких
    # методов, например к @letters, @errors нет доступа ни у кого, кроме самого
    # объекта данного класса
    def errors
      # Важная фишка Ruby: слово return можно опустить, если это последняя строка
      # в методе. Последнее вычисленное значение в методе и будет возвращено.
      @errors
    end
  
    def letters
      @letters
    end
  
    def good_letters
      @good_letters
    end
  
    def bad_letters
      @bad_letters
    end
end