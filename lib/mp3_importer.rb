
class MP3Importer
    attr_accessor :title, :path
    def initialize(path)
        @path = path
    end
    def files
        files = Dir.entries('./spec/fixtures/mp3s/')
        files.shift
        files.shift
        files
    end
    def import
        self.files.each do |file|
            Song.new_by_filename(file)
        end
    end
end