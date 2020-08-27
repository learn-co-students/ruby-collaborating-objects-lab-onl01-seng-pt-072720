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
        split_filename = filename.split(" - ")
        song = Song.new(split_filename[1])
        song.artist_name=(split_filename[0])
        song
    end

    def artist_name=(name)
        artist = Artist.find_or_create_by_name(name)
        artist.add_song(self)
    end



end