# Song
#   #initialize with a name
#     accepts a name for the song and makes it accessible through an attribute accessor (FAILED - 12)
#   #name=
#     sets the song name (FAILED - 13)
#   #artist=
#     sets the artist object to belong to the song (FAILED - 14)
#   .all
#     returns all existing Song instances (FAILED - 15)
#   .new_by_filename
#     creates a new instance of a song from the file that's passed (FAILED - 16)
#     associates new song instance with the artist from the filename (FAILED - 17)
#   #artist_name=
#     accepts an artist's name, finds or creates an Artist instance and assigns it to the Song's artist attribute (FAILED - 18)

class Song 
  @@all = []
  attr_accessor :name, :artist
  def initialize(name) 
    @name = name
    @@all << self
  end
  def artist=(artist)
    @artist = artist
  end
  def self.all  
    @@all 
  end
  def new_by_filename(file)
    song_name = file.split(" - ")[1]
    artistname = file.split(" - ")[0]
    song = self.new(song_name)
    song.artist_name = artistname
    song
  end
  def artist_name=(name)
  self.artist= Artist.find_or_create_by_name(name)
  self.artist.add_song(self)
  end
end