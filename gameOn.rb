hero_health = 4
badguy_health = 3
hero_alive = true
badguy_alive = true
battleOn = true
attack = true
badguys = ["Snake","Caveman","TRex"]

puts "Welcome to ROTTENPEACH! Brought to you by Ruby Illuminati LLC. \nPlease enter a user name."
name = gets.chomp
puts "HI #{name}!  Lets start battling!"
puts "You have #{hero_health} health points"

def battle(hero_health,badguy_health)
	hero_health = hero_health
	badguy_health = badguy_health
	battleOngoing = true
	hero_attack = true
	while battleOngoing do
		if hero_attack 
			failure = Random.rand(1...5)
			if failure == 1
				puts "Your attack misses...(Press Enter)"; STDIN.gets.chomp
				hero_attack = false
			else 
				loss = Random.rand(2...4)
				badguy_health = badguy_health - loss
				if badguy_health <= 0 
					puts "Your attack landed. Your enemy lost #{loss} points."
					puts "The badguy dies...(Press Enter)"; STDIN.gets.chomp
					results = true
					battleOngoing = false
				else 
					puts "Your attack landed. Your enemy lost #{loss} points."
					puts "Your enemy now has #{badguy_health} health points. (Press Enter)" ; STDIN.gets
					hero_attack = false
				end
			end
		else
			failure = Random.rand(1...5)
			if failure == 1
				puts "Badguy misses. (Press Enter)"; STDIN.gets.chomp
				hero_attack = true
			else
				loss = Random.rand(1...3)
				hero_health = hero_health - loss
				if hero_health <= 0 
					puts "Badguy lands a strike for #{loss} damage.  (Press Enter)" ; STDIN.gets.chomp
					results = false
					battleOngoing = false
				else 
					puts "Badguy lands a strike for #{loss} damage."
					puts "You now have #{hero_health} health points. (Press Enter)" ; STDIN.gets.chomp
					hero_attack = true
				end
			end
		end
	end
	return results
end

def user_choice(badguy)
		if badguy 
			badguy = badguy
		else 
			badguy = "Noone"
		end
		puts "A #{badguy} attacks! Do you want to fight? (type 'y' or 'n')"
		choice = gets.chomp.upcase
		if choice == "N"
			puts "Running away will cost you 2 health points" ; STDIN.gets.chomp
			return false
		elsif choice == "Y"
			return true
		end
end

while hero_alive do
	badguy = badguys.shift
	user_choice_results = user_choice(badguy)
	if user_choice_results == true
	 	battle_results = battle(hero_health,badguy_health)
		if battle_results
			hero_health = hero_health+1
			puts "Awsome..You now have #{hero_health} points" ; STDIN.gets.chomp
		else
			puts "Sorry...but it seems you died"
			puts "Would you like to play again? (type 'y' or 'n')"  
			again = gets.chomp.upcase
			if again == "N"
				hero_alive = false
				puts "Goodby"
			else
				hero_alive = true
				hero_health = 4
			end
		end
	else 
		hero_health = hero_health-=2
		if hero_health <= 0
			puts "You died"
			puts "Sorry...but it seems you died"
			puts "Would you like to play again? (type 'y' or 'n')"  
			again = gets.chomp.upcase
			if again == "N"
				hero_alive = false
				puts "Goodby"
			elsif again == "Y"
				hero_alive = true
				hero_health = 4
			end
		else
			puts "You now have #{hero_health} (Press Enter)" ; STDIN.gets.chomp
		end
	end
end

#To Do's...
# In While loop the hero dying logic is run 2x...that should be turned into a method
