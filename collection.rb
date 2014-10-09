require_relative 'project'
require_relative 'die'

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
			number_rolled = Die.new
			case number_rolled.number
			when 3..6 
				p.add
			else
				p.remove
			end

		end

	end


end