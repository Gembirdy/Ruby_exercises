class User
  def initialize(name, profession)
    @name = name
    @profession = profession
  end

  def fio
    @name
  end

  def profession
    @profession
  end
end

class Computer
  def initialize(mark)
    @mark = mark
  end
end

class Network
  def initialize(type)
    @type = type
  end
  
end

class Host
  def initialize(number)
    @number = number
  end
end


artem = User.new('Artem', 'student')
print artem.profession

