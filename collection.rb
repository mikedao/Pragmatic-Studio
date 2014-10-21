require_relative 'project'
require_relative 'die'
require_relative 'funding_round'

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
			FundingRound.fund(p)

		end

	end


end