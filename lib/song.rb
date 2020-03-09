class Song
  attr_accessor :name, :artist #name= sets the song name 
  #artist= sets the artist object to belong to the song 

  @@all = []

  def initialize(song)
    @name = song
    @artist = artist
    save
  end

  def self.all #returns all existing Song instances 
    @@all
  end

  def save
    @@all << self
  end

  def self.new_by_filename(title)
    songs = title.split(" - ")[1]
    artist = title.split(" - ")[0]
    song = self.new(songs)
    song.artist_name = artist
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end
end