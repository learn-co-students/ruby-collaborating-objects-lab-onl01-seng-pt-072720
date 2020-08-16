# responsible for creating songs given each filename and
# sending the artist's name (a string) to the Artist class

class Song 
    attr_accessor :name, :artist 
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

    def self.new_by_filename(filename)
        song_name = filename.split(" - ")[1]
        song = self.new(song_name)
        song_artist = filename.split(" - ")[0]
        song.artist = Artist.new(song_artist)
        song 
    end 

    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
        artist.add_song(self) 
    end 
end 

    # def self.new_by_filename(filename)
    #     song = self.new(name) #=> (name) here is not defined
    #     song.name = filename.split(" - ")[1]
    #     song.artist = Artist.new(name)
    #     song.artist.name = filename.split(" - ")[0]
    #     song 
    # end 

    # Alternative Solution:
    # def self.new_by_filename(filename)
    #     artist, song = filename.split(" - ")
    #     new_song = self.new(song)
    #     new_song.artist_name = artist
    #     new_song
    # end