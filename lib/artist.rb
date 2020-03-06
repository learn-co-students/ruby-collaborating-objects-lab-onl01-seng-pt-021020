class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    save
  end 
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    song.artist = self
    @songs << song
    song
  end
  
  def songs
    @songs
  end
  
  def self.find_or_create_by_name(name)
    artist_found = @@all.find {|artist| artist.name == name}
      if artist_found
        artist_found
      else 
        new_artist = self.new(name)
        new_artist
      end
  end
  
  
  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
  
end