# class Song
#   attr_accessor :name, :artist
#
#   def initialize(name)
#     @name = name
#   end
#
#   def self.new_by_filename(filename)
#     artist_name, song_name, extra = filename.split(" - ")
#     song = self.new(song_name)
#     artist = Artist.find_or_create_by_name(artist_name)
#     artist.add_song(song)
#   end
# end
# class Song
#
#   attr_accessor :name, :artist
#
#   @@all = []
#
#   def initialize(name)
#     @name = name
#   end
#
#   def self.all
#     @@all << self
#   end

# class Song
#   attr_accessor :artist, :name
#
#   @@all = []
#
#   def initialize(name)
#     @name = name
#     @@all << self
#   end
#
#   def songs
#     Song.all.select do |song|
#       song.artist == self
#     end
#   end
#
#   def self.all
#     @@all
#   end
#
#   # def self.new_by_filename(file_name)
#     # song = file_name.split(" - ")[1]
#     # artist_name = file_name.split(" - ")[0]
#     # new_song = Song.new(song)
#     # artist = Artist.new(artist_name)
#     # artist.add_song(new_song)
#     # new_song
#     def self.new_by_filename(file_name) 
#       artist_name, song_name = file_name.chomp(".mp3").split(" - ") 
#       song = Song.new(song_name) 
#       artist = Artist.new(artist_name) 
#       artist.add_song(song) 
#       song 
#     end 
#
#
#   def artist_name=(name)
#     self.artist = Artist.find_or_create_by_name(name)
#     artist.add_song(self)
#   end
# end

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
