class Song
  attr_accessor :name, :artist
@@all = []
def  initialize(name)
  @name = name
  @@all << self
end

def self.all
@@all

end

def self.new_by_filename(file_name)
artist_name, song_name, genre_name = file_name.chomp(".mp3").split(" - ")
song = Song.new(song_name)
artist = Artist.new(artist_name)
artist.add_song(song)
song


end


def artist_name=(name)
  @name = name
 self.artist = Artist.find_or_create_by_name(name)
 artist.add_song(self)

end


end
