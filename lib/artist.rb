class Artist 
  @@all = [] 
  attr_accessor :name, :songs, :genres
  
  def initialize(name)
    @name = name 
    @songs = []
    @genres = []
    @@all << self
  end
  
  def new_song(name,genre)
    new_song = Song.new(name, genre)
    @songs << new_song
    new_song.artist = self 
  end 
  
  def songs 
    Song.all.select do |song| 
      song.artist == self
    end 
  end
  
  def genres 
    @songs.each do |song| 
      song.genre 
    end 
  end 
  
  def self.all 
    @@all
  end 
  
  
  
  
end