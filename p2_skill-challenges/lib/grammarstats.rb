class GrammarStats
    def initialize
    @goodsentences = 0
    @sentences_entered = 0
    end
  
    def check(text)
    if (text[0].match /[[:upper:]]/) && [".", "?", "!"].include?(text[-1])
        @goodsentences += 1
        @sentences_entered += 1 
        return true 
    else
        @sentences_entered += 1
        return false
    end
    end
  
    def percentage_good
        return(@goodsentences.to_f / @sentences_entered.to_f) * 100
    end
  end
 
