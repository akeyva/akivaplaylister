

class Genre
	attr_accessor :name, :songs, :artists


	def initialize
		@songs = []
		@artists = []
		Genre.all << self
	end

	def self.all
  		@@genres ||= []
 	end

	# def count
	# 	self.artists.size
	# end	

	def self.reset_genres
  		@@genres = []
 	end 

 	def artists
 		@songs.collect{|s| s.artist}.uniq
 	end
end