require 'pry'

class MP3Importer 

  attr_accessor :path

  def initialize(path)
    @path = path
  end 
  
  # def files
  #   @files = Dir.entries(@path)
  #   @files.select do |file| 
  #     file.include?(".mp3") && file != @path 
  #     file.chomp(".mp3")
  #     @path << file
  #   end 
  # end 
  
  def files
    Dir[@path+"/*.mp3"].map { |file| file.split("/").last }
  end
  
  def import 
    files.each do |file| 
      Song.new_by_filename(file)
    end
  end 
  
end 