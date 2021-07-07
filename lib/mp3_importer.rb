# https://www.youtube.com/watch?v=3eLdZ_vgWWQ
# https://www.youtube.com/watch?v=iYcQ693LXck


# MP3Importer
#   #initialize
#     accepts a file path to parse mp3 files from
#   #files
#     loads all the mp3 files in the path directory (FAILED - 1)
#     normalizes the filename to just the mp3 filename with no path (FAILED - 2)
#   #import
#     imports the files into the library by creating songs from a filename (FAILED - 3)
class MP3Importer
 
 attr_accessor :path
  def initialize(path)
  @path = path
  end
  
  def files
   @files = [] 
    file = Dir.entries(@path)
    # binding.pry
    file.each do |file|
      if file.include?("mp3")
        @files << file
       
      end
  end
   @files #calling after the iteration will return only the mp3 files
  # binding.pry
end
 def import
     files.each {|filename| Song.new_by_filename(filename)}
   end

end