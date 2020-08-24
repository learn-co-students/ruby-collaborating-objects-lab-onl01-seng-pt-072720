require 'pry'

class Artist
    attr_accessor :name


  @@all = []

  def initialize (name)
    @name = name
    save
  end


  def save
    @@all << self
  end

  def self.all
    @@all
  end


  def add_song (song)
    song.artist = self
  end


  def songs
    Song.all.select {|temp| temp.artist == self}
  end

  def self.find_by_name(name)
    self.all.detect {|temp| temp.name == name}
  end

  def self.create_by_name (name)
    name = Artist.new(name)
  end


  def self.find_or_create_by_name (name)
    self.find_by_name(name) || self.create_by_name(name)
  end


  def print_songs
    songs.each {|temp| puts "#{temp.name}" }
  end






end
