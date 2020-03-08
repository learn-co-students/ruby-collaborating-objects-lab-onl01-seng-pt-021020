class Artist 
  attr_accessor :name 
  attr_reader :song 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @song = []
  end 
  
  def self.all
    @@all 
  end
  
  def add_song 
  end 
  
  def save
    
  
end 