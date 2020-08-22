require 'pry'

class MP3Importer
  attr_accessor :artist, :song, :path
  
  @@all = []
  
  def initialize(path)
    @path = path
  end
  
  def files
    path_ = @path + "/**/*.mp3"
    Dir[path_].map{ |f| File.basename(f)}  #gets the file name without the file path 
    
    #Dir[path_].map{ |f| File.basename(f,".mp3")  #gets the file name and removes the ".mp3" from each file
  end
  
  #binding.pry 
  
  def import
    files.each do |filename|
        Song.new_by_filename(filename)
    end
  end
  

end
