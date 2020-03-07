require 'pry'
class Artist
  @@all = []
  attr_accessor :name, :song
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def add_song(song)
    song.artist = self
  end
  def songs
    Song.all.select { |song| song.artist == self }
  end
  def self.find_or_create_by_name(name)
    @@all.each do |artist|
     if artist.name == name
       return artist
     end
   end
   self.new(name)
  end
  def print_songs
    Song.all.each do |song|
      if song.artist == self
        print song.name + "\n"
      end
    end
  end
end
