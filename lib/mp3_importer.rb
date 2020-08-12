class MP3Importer
    attr_accessor :path, :files
    @@files = [] 
    
    def initialize(file_path)
        @path = file_path
    end 

    def files
        
        Dir.entries(@path).each do |file| 
           if file.match(/.+.mp3/)
            @@files << file 
           end
        end
        @@files
    end

    def import
        @@files.each {|file| Song.new_by_filename(file)}
    end
end