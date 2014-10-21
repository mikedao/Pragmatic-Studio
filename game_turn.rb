require_relative 'die'
require_relative 'player'
require_relative 'treasure_trove'

module GameTurn

	def self.take_turn(player)
		number_rolled = Die.new
			case number_rolled.roll
			when 3..4
				puts "Player Skipped"
			when 1..2
				player.blam
			else
				player.w00t
			end
		treasure = TreasureTrove.random
		puts "#{player.name} found a #{treasure.name} worth #{treasure.points} points."
	end

end
