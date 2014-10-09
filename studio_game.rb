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


class Game
	attr_reader :title

	def initialize(title)
		@title = title.capitalize
		@players = []
	end

	def add_player(player)
		@players << player
	end

	def play
		puts "There are #{@players.size} players in #{@title}:"
		@players.each do |p|
			puts p
		end

		@players.each do |p|
			p.blam
			p.w00t
			p.w00t
			puts p
		end

	end

end

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)

knuckleheads = Game.new("Knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play

chipmunks = Game.new("Chipmunks")
player4 = Player.new("alvin")
player5 = Player.new("simon", 125)
player6 = Player.new("theodore", 60)

chipmunks.add_player(player4)
chipmunks.add_player(player5)
chipmunks.add_player(player6)
chipmunks.play