class Artist
    attr_accessor :name, :songs

    @@all = [] #Artist instances

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def self.all
        @@all
    end

    def add_song(song) #well this one got me, remember to read the errors! INITIALIZE!!! 
        @songs << song
    end

    def self.find_or_create_by_name(name)
        self.find(name) ? self.find(name) : self.create(name)
    end

    def self.find(name)
        self.all.find { |artist| artist.name == name}
    end

    def self.create(name)
        artist = self.new(name)
    end

    def print_songs
        songs.each { |song| puts song.name } #taking .each song printing their name
    end

end