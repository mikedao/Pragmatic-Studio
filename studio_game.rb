name1 = "larry"
name2 = "curly"
name3 = "moe"
name4 = "shemp"

health1 = 60
health2 = 125
health3 = 100
health4 = 90

puts "#{name1.capitalize} has a health of #{health1}."
puts "#{name2.upcase} has a health of #{health2}."

# Add two lines to the bottom of the program file: change Curly's health variable to point to Larry's health 
# variable and print out Curly's information again.
puts "\n"
health2 = health1
puts "#{name2.upcase} has a health of #{health2}."

# Reassign Larry's health variable to be 30. Then print out the name and health of both players again.
puts "\n"
health1 = 30
puts "#{name1.capitalize} has a health of #{health1}."
puts "#{name2.upcase} has a health of #{health2}."


# Create variables for a third player with the name "moe" and an initial health of 100. 
puts "\n"
display = "#{name3.capitalize} has a health of #{health3}."
puts "#{display.center(50,"*")}"

# Create a fourth player named "shemp" with an initial health of 90. Use variables to print out 
# his information with the name capitalized and left-justified
puts "\n"
puts "#{name4.capitalize.ljust(20,".")} #{health4} health"

puts "\n"
current_time = Time.new
puts "The game started on #{current_time.strftime("%A %D at %I:%M%p")}"
