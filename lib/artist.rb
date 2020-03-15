class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(artist)
    @name = artist 
    @songs = []
    save
  end

  def self.all 
    @@all
  end

  def save
    @@all << self
  end

  def add_song(song) 
    song.artist = self 
  end

  def songs
    Song.all.select {|song| song.artist == self} 
    #lists all songs that belong to this artist 
  end

  def self.find(name)
    self.all.find {|artist| artist.name == artist.name} 
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.new(name)
   
  end

  def print_songs
    self.songs.each {|song| puts song.name} 
  end
end 