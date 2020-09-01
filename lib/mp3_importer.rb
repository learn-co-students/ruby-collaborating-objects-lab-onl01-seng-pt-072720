require 'pry'

class MP3Importer 

  attr_accessor :path

  def initialize(path)
    @path = path
  end 
  
  def files
    @files = Dir.entries(@path)
    @files.delete_if {|file| file == ".mp3"}
    binding.pry 
    @files
  end 
  
  def import 
    self.files.each do |file| 
      Song.new_by_filename(file)
  end
  
end 