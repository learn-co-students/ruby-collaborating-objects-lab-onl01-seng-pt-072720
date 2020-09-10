class Song 
  
  attr_accessor :name
  attr_reader :artist 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
 
  def self.all 
    @@all 
  end 
  
  
  def self.new_by_filename(file_name)
    arr = file_name.split("-").map(&:strip)
    artist = Artist.new(arr[0])
    song = self.new(arr[1])
    artist.add_song(song)
    song.artist = artist
    song
  end
  
 
  def artist=(artist) 
    @artist = artist
  end 
  
  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
    artist.add_song(self)
  end 
  
end 