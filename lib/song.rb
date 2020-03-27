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
require "pry"
class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.new_by_filename(filename)
    song = filename.split(" - ")[1]
    artist_name = filename.split(" - ")[0]
    new_song = Song.new(song)
    new_song.artist_name = artist_name
    
    new_song.name = song
    
    new_song
    # binding.pry
  end

  def self.find_by_artist(artist)
    Song.all.select do | song |
      song.artist == artist
    end
  end
  
  def self.all
    @@all
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    
  end
  
  def save
    @@all << self
    self
  end
end