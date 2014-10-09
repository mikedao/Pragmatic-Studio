require_relative 'player'
require_relative 'die'
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
			number_rolled = Die.new
			case number_rolled.roll
			when 3..4 
				puts "Player Skipped"
			when 1..2
				p.blam
			else
				p.w00t
			end

			puts p
		end

	end

end