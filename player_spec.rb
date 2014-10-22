require 'stringio'
require_relative 'player'
require_relative 'treasure_trove'

$stdout = StringIO.new

describe Player do

	before do
		@player = Player.new("larry", 150)
		@initial_health = @player.health
	end

	it "has a capitalized name" do
		expect(@player.name).to eq("Larry")
	end

	it "has an intial health" do
		expect(@player.health).to eq(150)
	end

	# it "has a string representation" do
	# 	expect(@player.to_s).to eq("I'm Larry with a health of 150 and a score of 155.")
	# end

	# it "computes a score as the sum of its health and length of name" do
	# 	expect(@player.score).to eq(@player.health + @player.name.length)
	# end

	it "increases health by 15 when w00ted" do
		@player.w00t
		expect(@player.health).to eq(@initial_health + 15)
	end

	it "decreases health by 10 when blammed" do
		@player.blam
		expect(@player.health).to eq(@initial_health - 10)
	end

	it "computes points as the sum of all treasure points" do
	  @player.points.should == 0

	  @player.found_treasure(Treasure.new(:hammer, 50))

	  @player.points.should == 50

	  @player.found_treasure(Treasure.new(:crowbar, 400))

	  @player.points.should == 450

	  @player.found_treasure(Treasure.new(:hammer, 50))

	  @player.points.should == 500
	end

	context "is a strong player" do
		before do
			@player = Player.new("larry", 150)
		end

		it "strong? returns a true" do
			expect(@player.strong?).to eq(true)
		end
	end

	context "is not a strong player" do
		before do
			@player = Player.new("larry", 1)
		end

		it "strong? returns a false" do
			expect(@player.strong?).to eq(false)
		end
	end

	context "in a collection of players" do
	  before do
	    @player1 = Player.new("moe", 100)
	    @player2 = Player.new("larry", 200)
	    @player3 = Player.new("curly", 300)

	    @players = [@player1, @player2, @player3]
	  end

	  # it "is sorted by decreasing score" do
		# 	expect(@player.sort).to eq([@player3, @player2, @player1])
	  # end
	it "computes a score as the sum of its health and points" do
	  @player.found_treasure(Treasure.new(:hammer, 50))
	  @player.found_treasure(Treasure.new(:hammer, 50))

	  @player.score.should == 250
	end

	end

end
