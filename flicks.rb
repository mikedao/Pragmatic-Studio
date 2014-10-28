require_relative 'playlist'
require_relative 'movie3d'
movie1 = Movie.new("goonies", 10)
movie2 = Movie.new("ghostbusters", 9)
movie3 = Movie.new("goldfinger")



playlist1 = Playlist.new("Kermit")
playlist1.load(ARGV.shift || "movies.csv")
movie3d = Movie3D.new('glee', 5, 20)
playlist1.add_movie(movie3d)

loop do
  puts "\nHow many viewings? ('quit' to exit)"
  answer = gets.chomp.downcase
  case answer
  when /^\d+$/
      playlist1.play(answer.to_i)
  when 'quit' , 'exit'
    playlist1.print_stats
    break
  else
    puts "Please enter a number or 'quit'"
  end
end

playlist1.save
