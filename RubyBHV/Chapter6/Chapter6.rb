puts RUBY_RELEASE_DATE
puts RUBY_VERSION
puts RUBY_PLATFORM
puts ARGV
puts ENV
puts STDOUT
puts STDIN
puts STDERR
puts


# time = Time.mktime(2019, 10, 3, 15, 11, 00)
# p time.to_a
require 'Date'
p Date.new
p
require 'erb'

template = "current time is #{Time.now}"
p template
puts ERB.new(template).result

# require 'pry'
#
# class HelloWorld
#   def greeting
#     binding.pry
#     puts 'help me'
#   end
# end
#
# hello = HelloWorld.new
# hello.greeting

Monaday = 'Monday'
Tuesday = 'Thusday'
Wednesday = 'Wednesday'
Thursday = 'Thursday'
Friday = 'Friday'
Suterday = 'Suterday'
Sunday = 'Sunday'

Week = [Monaday, Tuesday, Wednesday, Thursday, Friday, Suterday, Sunday]
p Week
