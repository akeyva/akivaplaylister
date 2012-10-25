

class Song
	attr_accessor :name, :genre, :artist

	def initialize
		@name = ""
		@genres = []
    @artist = nil
    @genre = ""
	end
	
	def genre=(genre)
		@genres << genre
		genre.songs << self
	end		

end

