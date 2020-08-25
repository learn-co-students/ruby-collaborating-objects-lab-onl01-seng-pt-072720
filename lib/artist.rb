# responsible for either creating the artist (if the 
# artist doesn't exist in our prorgram) or finding the 
# instance of that artist (if the artist does exist)

class Artist
    attr_accessor :name 
    @@all = [] 

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    def add_song(song)
        song.artist = self
    end 

    def songs 
        Song.all.select { |song| song.artist == self }
    end 

    def self.find_or_create_by_name(name)
        if artist = all.find { |artist| artist.name == name }
        else 
            artist = self.new(name)
            # all << artist (already called out in the initialize method, it will double otherwise)
        end 
        artist 
    end 
    # self.find(name) ? self.find(name) : self.new(name)

    def print_songs
        songs.each { |song| puts "#{song.name}" }
    end 
end 