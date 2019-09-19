class Genre
  
  @@all = [] 
  
  attr_accessor :name
  
  def self.all 
    @@all 
  end 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def songs 
    Song.all.select do |song|
      song.genre.name == @name 
    end
  end
  
    def artists
    Artist.all.select do |artist|
      if artist.genres == @name 
        artist
      end
    end
  end

end