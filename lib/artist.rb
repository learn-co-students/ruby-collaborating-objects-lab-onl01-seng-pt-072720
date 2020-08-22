require 'pry'
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
    #song = Song.new(song)
    song.artist = self
  end
  
  def songs 
    Song.all.select{|song| song.artist == self}
  end
  
  def self.find_or_create_by_name(name)
    @@all.find{|art| art.name == name} || Artist.new(name)
  end
  
  def print_songs
    Song.all.select{|song| puts song.name if song.artist == self}
  end
  
end