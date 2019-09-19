class Artist 
  @@all = [] 
  attr_accessor :name, :songs 
  
  def initialize(name)
    @name = name 
    @songs = []
    @@all << self
  end
  
  def new_song(name,genre)
    new_song = Song.new(name, genre)
    @songs << new_song
    new_song.artist = self 
  end
  
  def self.all 
    @@all
  end 
  
  
  
  
end