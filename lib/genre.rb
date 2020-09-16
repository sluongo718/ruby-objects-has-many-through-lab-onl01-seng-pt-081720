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
  
  def songs 
    Song.all.select do |the_songs|
      the_songs.genre == self
    end 
  end
  
  def artists 
    songs.map do |art|
      art.artist
      end 
  end 
  
end 