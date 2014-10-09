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


class Collection
	attr_reader :title

	def initialize(title)
		@title = title.capitalize
		@projects = []
	end

	def add_project(project)
		@projects << project
	end

	def request_funding
		puts "\n"
		puts "REQUESTING FUNDING BITCHES"
		puts "\n"
		puts "There are #{@projects.size} projects."
		
		puts "\n"
		@projects.each do |p|
			puts p
		end

		puts "\n"
		@projects.each do |p|
			puts "Target funding is: #{p.funding} for Project #{p.name}."
		end

		puts "\n"
		@projects.each do |p|
			p.add
			p.add
			puts p
		end

	end


end

project1 = Project.new("ABC", 250, 1000)
project2 = Project.new("LMN", 500, 3000)
project3 = Project.new("XYZ", 25, 75)

startup = Collection.new("startup")
startup.add_project(project1)
startup.add_project(project2)
startup.add_project(project3)
startup.request_funding
