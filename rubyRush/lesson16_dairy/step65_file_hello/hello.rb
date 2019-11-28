current_path = File.dirname(__FILE__)
file_path = current_path + '/data/hello.txt'

file = File.open(file_path, 'a:UTF-8')
file.print("#{Time.now}\n#{RUBY_VERSION}\n\nhello")