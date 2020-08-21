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
    new_song = self.new(filename.split("-")[1].strip)
    new_song.artist = Artist.new(filename.split("-")[0].strip)
    new_song
  end
  
  def artist_name=(str)
    Artist.find_or_create_by_name(str).add_song(self)
  end
  
  
  
    
end