class Movie
	attr_reader :title, :rank

	def initialize(title, rank = 0)
		@title = title.capitalize
		@rank = rank
		@snack_carbs = Hash.new(0)
	end

	def ate_snack(snack)
		@snack_carbs[snack.name] += snack.carbs
		puts "#{@title} led to #{snack.carbs} #{snack.name} carbs being consumed."
		puts "#{@title}'s snacks: #{@snack_carbs}"
	end

	def carbs_consumed
		@snack_carbs.values.reduce(0, :+)
	end

	def each_snack
		@snack_carbs.each do |name, carbs|
			snack = Snack.new(name, carbs)
			yield snack
		end

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
