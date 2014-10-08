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

projects = [project2, project3]

# Print out the number of projects in your array.
puts "\n"
puts "There are #{projects.size} projects."

# Iterate through your projects and print each project's specific information.
puts "\n"
projects.each do |p|
	puts p
end

# Iterate through your projects and print out the target funding amount of each project.
puts "\n"
projects.each do |p|
	puts "Target funding is: #{p.funding} for Project #{p.name}."
end

# Iterate through your projects adding or removing funds from each project and then print out their 
# revised information.
puts "\n"
projects.each do |p|
	p.add
	p.add
	puts p
end




