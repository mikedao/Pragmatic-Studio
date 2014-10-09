require_relative 'die'
require_relative 'movie'

module WaldorfAndStatler
	
	

	def self.review(movie)
		number_rolled = Die.new
			case number_rolled.number
			when 1..2
				movie.thumbs_down
				puts "#{movie.title} got a thumbs down."
			when 3..4
				puts "#{movie.title} was skipped."
			else
				movie.thumbs_up
				puts "#{movie.title} got a thumbs up."
			end
	end
end
