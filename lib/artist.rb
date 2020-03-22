class Artist 
  
  @@all = []
  
  attr_accessor :name, :song
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def songs
    @songs
  end
  
  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    found = @@all.find {|artist| artist.name}
    if found
      found
    else 
      new_artist = Artist.new(name)
    end
  end
  
  def print_songs
    self.songs.each {|song| puts song.name}
  end
  
  
end
