def MP3Importer
  
  def initialize(path)
    @path = path
  end 
  
  def files 
    @files = [] 
    files = Dir.entries(@path)
    file.each do |file| 
      if file.include?("mp3")
        @files << file 
      end 
    end 
    @files 
    
  end 