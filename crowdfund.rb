def display_project(name, funding = 0)
	puts "Project #{name} has #{funding} in funding as of #{time}."

end

def time
	current_time = Time.new
	current_time.strftime("%T")
end


name1 = 'ABC'
name2 = 'LMN'
name3 = 'XYZ'

funding1 = 1000
funding2 = 500
funding3 = 0

display_project(name1, funding1)
display_project(name2, funding2)
display_project(name3)