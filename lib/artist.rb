require"pry"
class Artist 
  attr_accessor :name, :songs, :genre
  @@all = []
  
  def initialize(name)
  @name = name 
  @@all << self

  end 
  
  def self.all 
    @@all
  end 
  
  def new_song(name, genre)  # takes in an argument of a name and genre. Should know that it belongs to the artist.
    self.new(name, genre)
    binding.pry
  end 
  
  def songs               #iterates through all songs and finds the songs that belong to that artist. Try using select to achieve this.
    
  end
  
  def genres              # iterates over that artist's songs and collects the genre of each song.
    
  end

end 