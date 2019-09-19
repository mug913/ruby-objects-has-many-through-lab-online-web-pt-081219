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
    Songs.all.select do |song|
      song.genre.name == @name 
    end
  end
  
    def songs 
    Songs.all.select do |song|
      song.genre.name == @name 
    end
  end
end