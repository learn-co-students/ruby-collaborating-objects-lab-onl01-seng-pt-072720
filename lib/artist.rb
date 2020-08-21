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
    song.artist = self
  end
  
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  
  def self.find_or_create_by_name(str)
    # found_artist = self.all.find do |artist|
    #   artist.name == str
    # end
    # if found_artist == nil
    #   found_artist = self.new(str)
    # end
    # found_artist
    
    # found_artist = self.all.find { |artist| artist.name == str }
    # if found_artist 
    #   found_artist
    # else
    #   Artist.new(str)
    # end
    if found_artist = self.all.find { |artist| artist.name == str}
      found_artist
    else
      self.new(str)
    end
  end
  
  
  def print_songs
    songs.each do |song|
      puts song.name
    end
  end
  
  
      
  
end