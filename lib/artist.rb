class Artist
    @@all = []
    attr_accessor :name, :songs

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def self.all
        @@all 
    end

    def add_song(song)
        @songs << song
    end

    def self.find_by_name(name)
        self.all.find do |artist|
        artist.name == name
    end
end

    def self.find_or_create_by_name(name)
        self.find_by_name(name) || self.new(name)
    end

  def print_songs
     self.songs.each do |song|
        puts song.name
     end
  end 


end

