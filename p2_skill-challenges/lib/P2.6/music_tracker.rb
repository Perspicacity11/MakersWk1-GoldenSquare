class MusicTracker

    def initialize
        @track_list = []
    end

    def add(title, artist)
        @title = title
        @artist = artist
        @track_list << "#{title} by #{artist}"
    end

    def read
        fail "No tracks entered" if @track_list.empty?
        return @track_list.join(" | ")
    end
end