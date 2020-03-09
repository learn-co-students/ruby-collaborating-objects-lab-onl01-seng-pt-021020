require "pry"
class Song
  attr_accessor :name, :artist
  @@all=[]

  def initialize(song_name)
    @name=song_name
    save
  end

  def save
    @@all << self
  end

  def self.new_by_filename(file_name)
    artist_name, song_name = file_name.chomp(".mp3").split(" - ")
    song = Song.new(song_name)
    artist = Artist.new(artist_name)
    artist.add_song(song)
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.all
    @@all
  end

end
