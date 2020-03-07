require 'pry'
class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end
  def files
    files = Dir.entries(@path).select{|entry| entry.include?(".mp3")}
  end
  def import
    self.files.each{ |entry| Song.new_by_filename(entry)}
  end
end
