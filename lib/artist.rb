class Artist
    attr_accessor :name, :songs
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
        self.songs << song
    end

    def self.find_or_create_by_name(name)
        if @@all.find{|artist| artist.name = name} == nil
            Artist.new(name)
        else
            @@all.find{|artist| artist.name = name}
        end
    end

    def print_songs
        self.songs.each {|song| puts "#{song.name}"}
    end
end