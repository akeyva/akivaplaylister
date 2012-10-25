

class Song
	attr_accessor :name, :genre, :artist

	def initialize
		@name = ""
	end
	
	def genre=(genre)
		@genre = genre
		genre.songs << self
	end		

end

