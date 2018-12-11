def Genre 
  attr_accessor :name, :artists
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all 
    @@all 
  end 
  
  def songs     # iterates through all songs and finds the songs that belong to that genre.
    
  end 
  
  def artist    # iterates through all songs and finds the songs that belong to that genre.
    
  end 
end 