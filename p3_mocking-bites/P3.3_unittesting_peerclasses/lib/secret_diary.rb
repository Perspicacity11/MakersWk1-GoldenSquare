require 'diary'

class SecretDiary

    def initialize(diary) # diary is an instance of Diary
      @secret_diary = []
      @secret_diary << diary
      @lock = true
    end
  
    def lock
      @lock = true
    end
  
    def unlock
      @lock = false
    end

    def read
        if @lock == false
            return @secret_diary
        else
            return "GO AWAY"
        end
    end

  end