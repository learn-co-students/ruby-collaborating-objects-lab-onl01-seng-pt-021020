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
@songs << song
self.song
end

def songs
  @songs
end

  def name
    @name
  end

def self.all
@@all
end

end
