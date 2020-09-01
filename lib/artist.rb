require 'pry' 

class Artist
  
  attr_accessor :name
  attr_reader :songs 

  @@all = [] 
  
  def initialize(name)
    @name = name 
    @songs = []
    save
  end
  
  def save
    @@all << self 
  end 
  
  def self.all
    @@all
  end 

  def add_song(song)
      # binding.pry 
      # song.artist = self
        songs << song  
  end 
  
  def songs 
    @songs    
  end 
    
  def self.find(name)
    self.all.detect { |artist| artist.name == name }
  end
  
  def self.create(name)
    artist = self.new(name)
    # artist.save
    # artist
  end

  def self.find_or_create_by_name(name)
    self.find(name) || self.create(name)
  end
  
  def print_songs
    songs.each do |song|
      puts song.name 
    end 
  end 
  
end 