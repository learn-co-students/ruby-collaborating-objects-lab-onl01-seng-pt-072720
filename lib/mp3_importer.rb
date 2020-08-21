class MP3Importer
attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{@path}/*.mp3").map { |item| item.gsub("#{path}/", "") }
  end

  def import
    files.each { |item| Song.new_by_filename(item) }
  end

end
