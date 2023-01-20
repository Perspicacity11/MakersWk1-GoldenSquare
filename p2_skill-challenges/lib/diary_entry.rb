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
  
    def reading_chunk(wpm, minutes)
        chunks = []
        number_of_chunks = @word_count / wpm * minutes
        n = 0
        
        number_of_chunks.times do
            chunks << @contents.split(" ").slice(n, wpm).join(" ")
            n += wpm
        end
        
        answer = chunks[@call_count]
        if @call_count == number_of_chunks - 1
          @call_count = 0
        else
          @call_count += 1
        end
        answer
    end
  end