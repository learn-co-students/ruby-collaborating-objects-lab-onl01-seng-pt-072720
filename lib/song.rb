class Song
    attr_accessor :name, :title, :artist
    @@all = []
    def initialize(name)
        @name = name
        save
    end
    def save
        @@all << self
    end
    def self.all
        @@all
    end
    def self.new_by_filename(file)
        artist, song = file.split(' - ')
        new_song = self.new(song)
        new_song.artist_name = artist
        new_song
    end
    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
    end
end