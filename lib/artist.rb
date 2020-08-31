class Artist 
  
  attr_accessor :name 
  attr_reader :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self 
  end 
  
 
  def add_song(song)
    self.songs << song
  end 
  
  # def save 
  #   self.class.all << self 
  # end 
  
  def self.all 
    @@all
  end 
  
  def self.find_or_create_by_name(name)
    (my_artist = self.all.find{|artist| artist.name == name}) ? 
    my_artist : self.new(name) 
  end 
  
  def print_songs 
    self.songs.each{|s| puts s.name}
  end 
end 
