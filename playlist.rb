require_relative 'movie'
require_relative 'waldorf_and_statler'

class Playlist
	def initialize(name)
		@name = name
		@movies = []
	end

	def add_movie(movie)
		@movies << movie
	end


	def play
		puts "#{@name}'s playlist:"
		puts @movies

		@movies.each do |movie|
			WaldorfAndStatler.review(movie)
			puts movie
		end

	end

end

if __FILE__ == $0
	puts "This is running stand alone"
end