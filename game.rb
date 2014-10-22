require_relative 'player'
require_relative 'die'
require_relative 'game_turn'
require_relative 'treasure_trove'
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

		treasures = TreasureTrove::TREASURES
		puts "\nThere are #{treasures.size} treasures to be found."

		treasures.each do |treasure|
			puts "A #{treasure.name} is worth #{treasure.points} points"
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
			puts player.name.ljust(30, '.') + " " + player.score.to_s
		end

		@players.each do |player|
			puts "\n#{player.name}'s point totals:"
			puts "#{player.points} grand total points"
		end

		puts "\nGrand Total points across all players: #{total_points}"

		@players.sort.each do |player|
			puts "\n#{player.name}'s point totals:"
			player.each_found_treasure do |treasure|
				puts "#{treasure.points} total #{treasure.name} points."
			end

			puts "#{player.points} grand total points."
		end

	end

	def total_points
		@players.reduce(0) { |sum, player| sum + player.points }
	end


end
