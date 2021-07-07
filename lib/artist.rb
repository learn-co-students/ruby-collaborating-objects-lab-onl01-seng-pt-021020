

# Artist
#   #initialize with #name
#     accepts a name for the artist (FAILED - 1)
#   #name=
#     sets the artist name (FAILED - 2)
#   .all
#     returns all existing Artist instances (FAILED - 3)
#   #add_song
#     keeps track of an artist's songs (FAILED - 4)
#   #songs
#     lists all songs that belong to this artist (FAILED - 5)
#   .find_or_create_by_name
#     always returns an Artist instance (FAILED - 6)
#     finds or creates an artist by name maintaining uniqueness of objects by name property (FAILED - 7)
#     Creates new instance of Artist if none exist (FAILED - 8)
#   #print_songs
#     lists all of the artist's songs (FAILED - 9)
require "pry"

class Artist
attr_accessor :name, :songs
 @@all = []
def initialize(name) 
  @name = name
  @songs = []
  @@all << self
end


  def self.all
    
    
    @@all 
    # binding.pry
  end
  def add_song(song) 
    @songs << song
  end
  def songs
    @songs 
    
  end
  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name }
  end


  def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end

  def save
    @@all << self
  end

  def print_songs
    songs.each {|song| puts song.name}
  end
end