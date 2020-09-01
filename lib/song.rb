require 'pry' 

class Song 

  attr_accessor :name, :artist 
  
  @@all = [] 
  
  def initialize(name)
    @name = name 
  end 
  
  def self.new_by_filename(filename)
    parsed = filename.split(" - ")
    song = self.new(parsed[1])
    artist = Artist.find_or_create_by_name(parsed[0])
    song.artist = artist
    artist.add_song(song)
    song 
  end
  
  def artist_name(name)
    if artist.name == Artist.find_or_create_by_name
      Artist.add_song(self.name)
    else 
      nil 
    end 
  end 
  
end 