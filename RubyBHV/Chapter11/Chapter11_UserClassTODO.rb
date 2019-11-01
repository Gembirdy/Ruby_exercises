class User
  def initialize(surname, name, fatherName, mark = 0)
    @surname = surname
    @name = name
    @fatherName = fatherName
    @mark  = mark
  end
  def getMark
    @mark
  end
end

vik = User.new('kul', 'vika', 'alex', 4)
igor = User.new('strak', 'igor', 'uri', 3)
kost = User.new('kov', 'kost', 'serg', 3)
users = [vik, igor, kost]

avg = (vik.getMark + igor.getMark + kost.getMark) / 3.0
result = []
for i in users do
  result << i if i.getMark > avg
end

pp result
