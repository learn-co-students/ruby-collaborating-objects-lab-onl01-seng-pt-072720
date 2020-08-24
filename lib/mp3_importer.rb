require 'pry'

class MP3Importer
  attr_accessor :path


  def initialize (path)
    @path = path
  end

  def files
    test = Dir[@path+"/*.mp3"].map { |file| file.split("/").last }
  end

def import
  files. each {|temp| Song.new_by_filename(temp)}
end


end
