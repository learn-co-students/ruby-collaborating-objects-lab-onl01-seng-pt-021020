class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end 
  
  def files 
    Dir.entries(path).select {|entry| entry.include?(".mp3")}
  end
   # @files = [] 
    #files = Dir.entries(@path)
    #file.each do |file| 
      #if file.include?("mp3")
        #@files << file 
    
    def import 
      files.each {|filename| Song.new_by_filename(filename)}
    end 