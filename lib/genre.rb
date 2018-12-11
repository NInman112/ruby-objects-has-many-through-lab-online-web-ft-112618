require"pry"
class Genre 
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all 
    @@all 
  end 
  
  def songs     # iterates through all songs and finds the songs that belong to that genre.
    Song.all.select {|song| song.genre == self}
   #binding.pry
  end 
  
  def artists    # iterates through all songs and finds the songs that belong to that genre.
    songs.collect {|song| song.artist}
  end 
end 