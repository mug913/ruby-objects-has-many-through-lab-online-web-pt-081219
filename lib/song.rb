class Song 
  @@all = []
  attr_accessor :name, :artist, :genres
  def self.all 
    @@all 
  end 
  
  def initialize(name,artist,genre)
    @name = name 
    @artist = artist 
    @genres = genre 
    @@all << self 
  end 


end 