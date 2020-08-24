class Song
    attr_accessor :name, :artist, :genre

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


def artist_name= (name)
  artist = Artist.find_or_create_by_name(name)
  artist.add_song(self)
end

def self.new_by_filename (filename)
  artist_name = filename.split(" - ")[0]
  title = filename.split(" - ")[1]
  new_song = Song.new(title)
  new_song.artist_name = artist_name
  new_song
end


end
