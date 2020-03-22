class MP3Importer
  attr_accessor :path, :song
  
  def initialize(path)
    @path = path
  end
  
  def files
    files = Dir.new(path)
    files.select {|file_path| file_path.include?(".mp3")}
  end
  
  def import 
    files.each {|file| Song.new_by_filename(file)}
  end
end