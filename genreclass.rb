

class Genre
	attr_accessor :name, :songs, :artists

@@genres = []

	def initialize
		@name = name
		@songs = []
		@artists = []
		@@genres << self
	end

	def self.all
  		@@genres
 	end

	def count
		self.artists.size
	end	

	def self.reset_genres
  		@@genres = []
 	end 

 	def artists
 		@songs.collect{|s| s.artist}.uniq
 	end
end