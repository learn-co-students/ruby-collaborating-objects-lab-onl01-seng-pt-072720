class Song 
  attr_accessor  :name, :artist, :artist_name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename) 
    split_name = filename.split(" - ")
    song_artist = split_name[0]
    song_name = split_name[1]
    
    new_song = self.new(song_name)
    new_song.artist_name = song_artist
    new_song  
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end 
  
  
end