require_relative 'project'
$stdout = StringIO.new

describe Project do
	before do
		@initial_funding = 100
		@target_funding = 1000
		@project = Project.new("ABC", @initial_funding, @target_funding)
	end

	it "has an initial funding amount" do
		expect(@project.funding).to eq(@initial_funding)
	end

	it "computes the total funding outstanding as the target amount minus the funding amount" do
		expect(@project.needed).to eq(@target_funding - @initial_funding)
	end

	it "increases funds by 25 when funds are added" do
		@project.add
		expect(@project.funding).to eq(@initial_funding + 25)
	end

	it "decreases funds by 15 when funds are removed" do
		@project.remove
		expect(@project.funding).to eq(@initial_funding - 15)
	end


end