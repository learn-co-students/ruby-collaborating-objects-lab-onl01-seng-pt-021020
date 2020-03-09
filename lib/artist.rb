require 'pry'
class Artist
attr_accessor :name, :song
@@all = []

def initialize(name)
  @name = name
  @songs = []
  @@all << self
end

def add_song(song)
  song.artist = self
  @songs << song
    self.song

end

def songs
  @songs

end

  def name
    @name
  end


def self.find_or_create_by_name(name)
  found = self.all.find {|artist| artist.name == name}
if found
  found
else new_artist = self.new(name)
new_artist
end
end

def self.all
@@all
end
def print_songs
  songs.each {|s| puts s.name}
  songs
end

end
