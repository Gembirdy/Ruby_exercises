class WordReader

    current_path = File.dirname(__FILE__)
    file_path = current_path + '/data/#TODO.txt' #TODO

    def read_from_file(file_name)
        if File.exist?(file_name)
            f = File.new(file_name, 'r:UTF-8')
            content = f.readlines

            f.close
            return content.sample.chomp
        else
            return nil
        end

    end

end 
