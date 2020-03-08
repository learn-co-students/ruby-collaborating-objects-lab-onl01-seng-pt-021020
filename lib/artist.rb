class Artist 
  attr_accessor :name 
  attr_reader :songs  
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end 
  
  def self.all
    @@all 
  end
  
  def add_song 
    @songs.push(song)
  end 
  
  def save
    @@all.push(self) 
  end 
    
  
end 