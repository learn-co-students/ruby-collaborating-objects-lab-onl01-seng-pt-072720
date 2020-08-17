class Artist
    attr_accessor :name, :songs
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
    def add_song(song)
        song.artist = self
    end
    def songs
        Song.all.select {|song| song.artist == self}  
    end
    def self.find_or_create_by_name(name)
        artist = self.all.find {|artist| artist.name == name } 
        artist == nil ? Artist.new(name) : artist
    end
    def print_songs
        self.songs.each do |song|
            puts song.name
        end
    end
end
