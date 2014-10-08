class Player

	attr_reader :health
	attr_accessor :name
	def initialize(name, health=100)
		@name = name.capitalize
		@health = health
	end

	def name=(new_name)
		@name = new_name.capitalize
	end


	def to_s
		"I'm #{@name} with a health of #{@health} and a score of #{score}."
	end

	def blam
		@health -= 10
		puts "#{@name} got blammed!"
	end

	def w00t
		@health += 15
		puts "#{@name} got w00ted!"
	end

	def score
		@name.length + @health
	end


end

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)

players = [player1, player2, player3]
puts "There are #{players.size} players in the game: \n"

# Iterate over each player, and print out player information
puts "\n"
players.each do |p|
	puts p
end

# Iterate over each player, and print out health
puts "\n"
players.each do |p|
	puts p.health
end

# Iterate over each player, blam then w00t twice, then display
puts "\n"
players.each do |p|
	p.blam
	p.w00t
	p.w00t
	puts p
end

# So pop Curly out of the array and push on a new player named "Shemp" with an initial health of 90. 
# Then when you iterate through the array of players, Shemp should be on the roster.
puts "\n"
players.pop
player4 = Player.new("shemp", 90)
players.push(player4)
players.each do |p|
	puts p
end



