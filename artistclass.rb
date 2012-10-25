

class Artist
	attr_accessor :name, :songs, :genres


	def initialize
		@songs = []
		@genres = []
		Artist.all << self
	end	


	def self.all
  	@@artists ||= []
 	end
	
	# def count
	# 	@@artist.size
	# end	

	def self.count
  	self.all.size
 	end
	
	def songs_count
  	self.songs.count
 	end	

		def self.reset_artists
		@@artists = []	
	end	
	
	def add_song(song)
		self.songs << song
		self.genres << song.genre

		if song.genre
			song.genre.artists << self 
			song.genre.artists.uniq!
		end	
		# @@artists << self
	end	

	def genre=(genre)
		@genre = genre
		genre.artists << self
	end	



end

