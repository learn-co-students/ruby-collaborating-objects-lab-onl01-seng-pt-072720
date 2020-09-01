require 'pry' 

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
  
  # def self.new_by_filename(filename)
  #   parsed = filename.split(" - ")
  # # binding.pry 
  #   song_name = parsed[1]
  #   artist_name = parsed[0]
  #   song = Song.new(song_name)
  #   song.artist_name = artist_name
  #   song 
  # end
  
  
  def self.new_by_filename(file)
    artist = file.split(" - ")[0]
    song_name = file.split(" - ")[1]
    song = self.new(song_name) 
    artist = Artist.find_or_create_by_name(artist)
    song.artist = artist
    artist.add_song(song)
    song
  end
  
  # def artist_name=(name)
  #   if name == artist.find_or_create_by_name
  #     Artist.add_song(self.name)
  #   else 
  #     nil 
  #   end 
  # end
  
  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
  end
  
end 