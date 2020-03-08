class MP3Importer
  attr_accessor :path

  def initialize(filepath)
    @path = filepath
  end

  def files
    # @files ||= Dir.entries(@path).select {|song| !File.directory?(song) && song.end_with?(".mp3")}
    @files = Dir.entries(@path)
    @files.delete_if {|file| file == "." || file == ".."}
  end

  def import
    files.each {|song| Song.new_by_filename(song)}
  end
end
