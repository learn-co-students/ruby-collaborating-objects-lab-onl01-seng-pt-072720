class Song
    attr_accessor :name, :artist

    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(filename)
        info = filename.split(" - ")
        new_song = self.new(info[1])
        new_song.artist_name = info[0]
        new_song
    end

    def artist_name=(artist_name)
        self.artist = Artist.find_or_create_by_name(artist_name)
    end
end