

class Artist
	attr_accessor :name, :songs, :genres

@@artist = []

	def self.reset_artists
		@@artist = []	
	end	
	
	def initialize
		@name = name
		@songs = []
		@artist = []
		@genres = []
		@@artist << self
	end	

	

	def self.all
  	@@artist
 	end
	
	# def count
	# 	@@artist.size
	# end	

	def self.count
  	self.all.size
 	end
	
	def songs_count
  	self.songs.size
 	end	
	
	def add_song(song)
		@songs << song
		@genres << song.genre
		song.genre.artists << self if song.genre
		@@artist << self 
	end	

	def genre=(genre)
		@genres << genre
		genre.artists << self
	end	



end

