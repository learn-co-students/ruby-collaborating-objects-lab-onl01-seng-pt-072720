class MP3Importer
    
    attr_accessor :path 

    def initialize(path)
        @path = path 
    end

    def files 
        Dir.glob("#{path}/*.mp3").map{|file| file.split("mp3s/")[1]}
    end

    def import
        files.each do |file_name|
            Song.new_by_filename(file_name)
        end
    end




    
end
