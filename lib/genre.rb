class Genre
  attr_accessor :name

 @@all = []

 def initialize(name)
   @name = name
   @@all << self
 end

 def songs
   Song.all.select do |song|
     song.genre == self
   end
 end

 def artists
   songs.map do |song|
     song.artist
   end
 end

 def self.all
   @@all
 end
end
