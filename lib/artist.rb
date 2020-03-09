class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(artist)
    @name = artist #accepts and sets artists name 
    @songs = []
    save
  end

  def self.all #returns all existing Artist instances 
    @@all
  end

  def save
    @@all << self
  end

  def add_song(song) 
    song.artist = self #keeps track of all the songs from an artist
  end

  def songs
    Song.all.select {|song| song.artist == self} 
    #lists all songs that belong to this artist 
  end

  def self.find(name)
    self.all.find {|artist| artist.name == artist.name} #find the artist whose name matches the name passed in here 
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.new(name)
    #always returns an artist instance 
    #finds or creates an artist by name, and creates a new instance of Artist if none exist 
  end

  def print_songs
    self.songs.each {|song| puts song.name} #shows all the artist's songs 
  end
end 