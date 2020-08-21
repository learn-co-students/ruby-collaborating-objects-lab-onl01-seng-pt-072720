class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        @songs = []
    end

    def self.all
        @@all
    end

    def add_song(song)
        @songs << song      
    end

    def songs
        @songs
    end

    def self.find_or_create_by_name(name)
        @@all.each do | aname |
            if (aname.name == name)
                return aname
            end
        end
        artist = Artist.new(name)
        artist
    end

    def print_songs
        songs.each do | song |
            puts song.name
        end
    end
end