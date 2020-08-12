require 'pry'
class Artist
    attr_accessor :name
    @@all = []

        def initialize(name)
            @name = name
            @@all << self
        end

        def songs
           Song.all.find_all {|song| song.artist == self}
        end

        def self.all
            @@all
        end

        def add_song(song)
            song.artist = self
        end

        def self.find_or_create_by_name(name)
            f_a = @@all.find {|artist| artist.name == name}
            if f_a 
              f_a
            else
                artist = self.new(name)
                artist
            end
          end
        
        def print_songs
            songs.each do |song| 
                puts song.name
           end
        end 

end
