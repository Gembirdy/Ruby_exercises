class Bridge
    
    def initialize
        puts 'road is created'    
        @opened = false
    end
    
    def openBridge
        puts 'bridge is open, u can ride'
        @opened = true
    end

    def isOpen?
        return @opened
    end

end