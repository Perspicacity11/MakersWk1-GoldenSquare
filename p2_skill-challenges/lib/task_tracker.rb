class TaskTracker

    def initialize
        @tasklist = []
        @tasknumber = 1
    end

    def add(task)
        @tasklist << "#{@tasknumber}. #{task}"
        @tasknumber += 1
    end

    def read
        fail "No tasks added" if @tasklist.empty?
        @tasklist.join(" | ")
    end

    def mark_complete(tasknumber)
        @tasklist.delete_at(tasknumber - 1)
    end
end