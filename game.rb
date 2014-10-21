require_relative 'player'
require_relative 'die'
require_relative 'game_turn'
class Game
	attr_reader :title

	def initialize(title)
		@title = title.capitalize
		@players = []
	end

	def add_player(player)
		@players << player
	end

	def print_name_and_health(player)
		puts "#{player.name} (#{player.health})"
	end

	def play(rounds)
		puts "There are #{@players.size} players in #{@title}:"
		@players.each do |p|
			puts p
		end

		1.upto(rounds) do |n|
			puts "\nRound #{n}:"
			@players.each do |p|
				GameTurn.take_turn(p)
				puts p
			end
		end

	end

	def print_stats
		strong, weak = @players.partition {|n| n.strong?}

		puts "\n#{@title} Statistics:"

		puts "\n#{strong.size} strong players:"
		strong.each do |player|
			print_name_and_health(player)
		end

		puts "\n#{weak.size} weak players:"
		weak.each do |player|
			print_name_and_health(player)
		end


		puts "\n#{@title} High Scores:"
		@players.sort.each do |player|
			player.print_name_and_health(player)
		end


	end


end
