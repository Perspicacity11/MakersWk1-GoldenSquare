class DiaryEntry
    def initialize(title, contents)
      @title = title
      @contents = contents
      @word_count = 0
      @call_count = 0
    end
  
    def title
      @title
    end
  
    def contents
      @contents
    end
  
    def count_words
      @word_count = @contents.split.length
      return @word_count
    end
  
    def reading_time(wpm)
      @word_count = self.count_words
      return (@word_count / wpm.to_f).ceil
    end

    def extract_number
      @contents.split(" ").select do |number|
        if number.match(/(0[1-6][0-9]{8,10}|07[0-9]{9})/)
          return number
        end
      end
    end
  end