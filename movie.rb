class Movie
	attr_reader :title, :rank

	def initialize(title, rank = 0)
		@title = title.capitalize
		@rank = rank
	end

	def to_s
	"#{@title} has a rank of #{@rank}. (#{status})"
	end

	def thumbs_up
		@rank += 1
	end

	def thumbs_down
		@rank -= 1
	end

	def hit?
		if @rank >= 10
			return true
		else
			false
		end

	end

	def status
		hit? ? "Hit" : "Flop"
	end

	def <=>(other_movie)
		other_movie.rank <=> @rank
	end


end
