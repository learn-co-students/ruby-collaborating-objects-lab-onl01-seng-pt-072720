require 'pry' 

class Artist
  
  attr_accessor :name, :songs
  
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @songs = [] 
  end
  
  def self.all 
    @@all 
  end 

  def add_song(song)
    @songs << song 
  end 
  
  # def self.all 
  #   @@all << self 
  # end 
  
  def songs 
    Song.all.select {|song| song.artist == self} 
   
  end 
    
  def self.find_or_create_by_name(name)
      self.all.detect {|artist| artist.name == name} ||
      Artist.new(name)
  end 
  
  def print_songs
    @songs.each do |song|
      puts song.name
    end 
  end 
  
end 