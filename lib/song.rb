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

  def self.new_by_filename(filename)
    new_song_array = []
    new_song_array = filename.split(" - ")
    new_song = self.new(new_song_array[1])
    new_song.artist_name=(new_song_array[0])
    # Artist.find_or_create_by_name(new_song_array[0])
    new_song
  end

  def artist_name=(art_name)
    self.artist = Artist.find_or_create_by_name(art_name)
  end

end
