class Timer
    attr_accessor :seconds
    attr_accessor :hours
    attr_accessor :minutes
    
    def initialize
        @seconds = 0;
    end
    
    def seconds
        @seconds
    end
    
    def time_string
        self.calculate_time
        @hours = self.padded(@hours)
        @minutes = self.padded(@minutes)
        @seconds = self.padded(@seconds)
        "#{@hours}:#{@minutes}:#{@seconds}"
    end
    
    def calculate_time
        time_left = @seconds
        
            @minutes = @seconds / 60 #66 minutes
            @hours = @minutes / 60 #1 hour
            @seconds = @seconds - (3600 * @hours) #375 seconds
            
            @minutes = @seconds / 60 #6 minutes
            @seconds = @seconds - (60 * @minutes) #15 seconds
    end
    
    def padded(number)
        if number < 10
            "0" << number.to_s
        else
            number
        end
    end
    
end