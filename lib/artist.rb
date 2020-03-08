class Artist
  attr_accessor :name
  attr_reader :songs
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
    @songs << song
  end

  def self.find_or_create_by_name(artist_name)
    artist = self.all.find {|artist| artist.name == artist_name}
    if artist
      artist
    else
      new_artist = self.new(artist_name)
      new_artist
    end
  end

  def print_songs
    @songs.each do |song_name|
      puts song_name.name
    end
  end
end
