
puts "Welcome to ROTTENPEACH! Brought to you by Ruby Illuminati LLC. \nPlease enter a user name."
name = gets.chomp
puts "HI #{name}!  Lets start battleing!"


health_points = 10

bad_guy_health = 8

puts "the evil slumlord CRAWFORD wants to fight you"
puts "fight or run chump TYPE (fight/run)"
choice = gets.chomp
if choice == "fight"
   failure = Random.rand(1...5)
  if failure == 1
     puts "missed bro"
  else failure != 1
     loss = Random.rand(2...4)
     bad_guy_health = bad_guy_health - loss
     puts "Your attack landed. Your enemy lost #{loss} points"
     puts "Your enemy now has #{bad_guy_health} health points"
  end
end
