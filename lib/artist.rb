class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    @songs << song
  end
  
  def songs
    @songs
  end
  
  def self.find_or_create_by_name(name)
    artist = @@all.select {|artist| artist.name == name}.first
    if artist.nil?
      artist = self.new(name)
    end
    
    artist
  end
  
  def print_songs
    songs.each {|song| puts song.name}
  end
  
end