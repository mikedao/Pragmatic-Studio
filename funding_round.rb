require_relative 'die'
require_relative 'project'

module FundingRound
	def self.fund(project)
		number_rolled = Die.new
		case number_rolled.number
		when 3..6 
			project.add
		else
			project.remove
		end	

	end

end
