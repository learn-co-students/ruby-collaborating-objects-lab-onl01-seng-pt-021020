require "pry"
class Artist
  attr_accessor :name
  @@all=[]

  def initialize(name)
    @name=name
    @songs=[]
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song_name)
    @songs<< song_name
    song_name.artist=self
  end

  def songs
    Song.all.select {|songs| songs.artist == self}
  end

  def self.find_or_create_by_name(name)
    found = self.all.find {|artist| artist.name == name}
      if found
        found
      else new_artist = self.new(name)
        new_artist
      end
  end

  def print_songs
    self.songs.each {|s| puts s.name}
    self.songs
  end

end
