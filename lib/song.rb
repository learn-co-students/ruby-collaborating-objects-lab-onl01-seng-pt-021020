class Song
  attr_accessor :name, :genre
  attr_reader :artist, :artist_name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.new_by_filename(filename)
    artist_name, song_name, genre = filename.split(' - ')
    song = self.new(song_name)
    song.artist = Artist.find_or_create_by_name(artist_name)
    song.genre = genre.split('.')[0]
    song
  end
  
  def self.all
    @@all
  end
  
  def artist=(artist)
    artist.add_song(self)
    @artist = artist
  end
  
  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
  end
  
end