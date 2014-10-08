class Project

	attr_reader :funding, :target
	attr_accessor :name

	def initialize(name, funding, target)
		@name = name
		@funding = funding
		@target = target
	end

	def add(funds = 25)
		@funding += funds
		puts "Project #{@name} got more funds!"
	end

	def remove(funds = 15)
		@funding -= funds
		puts "Project #{@name} lost some funds!"
	end

	def to_s
		"Project #{@name} has $#{@funding} in funding towards a goal of $#{@target}. $#{needed} is still needed."
	end

	def needed
		@target - @funding 
	end

end

project2 = Project.new("LMN", 500, 3000)
project3 = Project.new("XYZ", 25, 75)
puts project2
puts project3

project2.remove
project3.add

puts project2
puts project3
