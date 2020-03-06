class Song
  attr_accessor :artist, :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(file)
    song_info = file.chomp("mp3").split(" - ")
    song = Song.new(song_info[1])
    song.artist_name = song_info[0]
    song
  end

  #this is a setter method, a writer,
  #it sets the artist attribute of the song instance equal to an artist instance (rather than just a string)
  #it calls a Class Method in Artist, that returns an artist object
  #the find_or_create_by_name either finds an existing artist and returns it, or creates a new object and returns it
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    #after the artist instance is returned
    #this method calls the artist instance method #add_song
    #add_song adds this current song instance to the artist's song list
    self.artist.add_song(self)
  end

  def self.all
    @@all
  end

end
