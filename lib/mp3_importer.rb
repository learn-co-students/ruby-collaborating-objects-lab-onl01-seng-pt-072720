class MP3Importer
    attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files
        filenames = []
        Dir[@path + "/*.mp3"].each do | file |
            filenames << file.split("/").last
        end

        filenames
    end

    def import
        files.each do | filename |
            Song.new_by_filename(filename)
        end
    end
end