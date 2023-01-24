require 'diaryentry'
require 'todolist'
require 'todoitems'

class Diary
    def initialize
        @entries_list = []
        @total_words = 0
        @diary_todo_list = []
    end

    def add(entry)
        @entries_list << entry
    end
   
    def all
        return @entries_list
    end
  
    def count_words
        @entries_list.each do |entry|
            @total_words += entry.count_words
        end
        return @total_words
    end
  
    def reading_time(wpm) 
        @total_words = self.count_words
        return (@total_words / wpm.to_f).ceil
    end
  
    def find_best_entry_for_reading_time(wpm, minutes)
        readable_entries = @entries_list.select do |entry|
            entry.reading_time(wpm) <= minutes
        end
        sorted_entries = readable_entries.sort_by do |entry|
            entry.reading_time(wpm)
        end
        return sorted_entries.last
    end

    def contact_list
    contact_list = []
    @entries_list.each do |entry|
        contact_list << entry.extract_number
    end
    return contact_list
    end

    def load_todolist(list)
        return list.incomplete
        #HOW DO I GET THIS TO RETURN THE CONTENTS STRING AND NOT THE OBJECT ID?
    end
end


