require_relative 'game'
$stdout = StringIO.new


describe Game do

  before do
    @game = Game.new("Knuckleheads")

    @initial_health = 100
    @player = Player.new("moe", @initial_health)
    
    @game.add_player(@player)
  end

  it "player gets w00ted when a high number is rolled" do
  	allow_any_instance_of(Die).to receive(:roll).and_return(5)
  	@game.play
  	expect(@player.health).to eq(@initial_health + 15)
  end

  it "player gets skipped when a medium number is rolled" do
  	allow_any_instance_of(Die).to receive(:roll).and_return(3)
  	@game.play
  	expect(@player.health).to eq(@initial_health)
  end

  it "player gets blammed when a low number is rolled" do
  	allow_any_instance_of(Die).to receive(:roll).and_return(1)
  	@game.play
  	expect(@player.health).to eq(@initial_health - 10)
  end

end