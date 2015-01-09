puts "Welcome to ROTTENPEACH! Brought to you by Ruby Illuminati LLC. \nPlease enter a user name."
name = gets.chomp
puts "HI #{name}!  Lets start battling!"

def battle
	hero_health = 10
	badguy_health = 8
	while (badguy_health > 0)
	   failure = Random.rand(1...5)
	  if failure == 1
	     puts "Missed, bro."
	  else 
	     loss = Random.rand(2...4)
	     bad_guy_health = badguy_health - loss
	     puts "Your attack landed. Your enemy lost #{loss} points."
	     puts "Your enemy now has #{bad_guy_health} health points."
	 end
	 puts "Now your enemy is on the attack!"
	 enemy_failure = Random.rand(1...5)
	 if enemy_failure == 1 || enemy_failure == 2
	 	puts "Phew! Your enemy's attack missed."
	 else
	 	hero_loss = Random.rand(1...3)
	 	hero_health = hero_health - hero_loss
	 	puts "Your enemy's attack landed! You lost #{hero_loss} points."
	 	puts "You now have #{hero_health} points."
	 end
	end
	if badguy_health == 0
	   puts "Your enemy is dead!"
	end
	if hero_health == 0
		puts "You're dead! :("
	end
end

puts "The evil slumlord CRAWFORD wants to fight you."
puts "Fight or run, chump. (Type 'fight' or 'run')"
choice = gets.chomp.upcase
if choice == "RUN"
	hero_health = hero_health -2
elsif choice == "FIGHT"
	battle
end


=begin
puts "The evil slumlord CRAWFORD wants to fight you."
puts "Fight or run, chump. (Type 'fight' or 'run')"
choice = gets.chomp.upcase
if choice == "RUN"
	hero_health = hero_health -2
elsif choice == "FIGHT"
	while hero_health > 0 || badguy_health > 0
	   failure = Random.rand(1...5)
	  if failure == 1
	     puts "Missed, bro."
	  else failure != 1
	     loss = Random.rand(2...4)
	     bad_guy_health = badguy_health - loss
	     puts "Your attack landed. Your enemy lost #{loss} points"
	     puts "Your enemy now has #{bad_guy_health} health points"
	     if badguy_health == 0
	     	puts "Your enemy is dead!"
	  	end
	  end
	end
end
=end
