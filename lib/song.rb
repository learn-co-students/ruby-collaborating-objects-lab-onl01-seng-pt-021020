class Song
  attr_accessor :artist, :name, :genre
  
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all
  end 

  def artist_name=(name) 
    self.artist = Artist.find_or_create_by_name(name)
    #artist.add_song(self)
  end

  def self.new_by_filename(filename)
    artist_name, song_name, genre_name = filename.chomp(".mp3").split(" - ")
    song = self.new(song_name)
    song.artist = Artist.find_or_create_by_name(artist_name)
    song.genre = genre_name
    song #was.save
  end 
end
