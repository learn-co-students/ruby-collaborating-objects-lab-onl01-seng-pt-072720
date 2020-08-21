require 'pry'
class MP3Importer
  
  attr_reader :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    # Dir.entries(@path).find_all { |file| file.end_with?("mp3")}
    Dir[@path+"/*.mp3"].map { |file| file.split("/").last}
  end
  
  def import
    files.each { |file| Song.new_by_filename(file)}
  end
  
  
end