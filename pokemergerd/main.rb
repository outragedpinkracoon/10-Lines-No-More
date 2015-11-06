['ermahgerd','pokegem'].each(&method(:require))
while true
	puts "enter pokedex id"
	input = gets.chomp
	pokemon = JSON.parse(Pokegem.get "pokemon", input)
	thing = "oh my god #{pokemon["name"]} is a #{pokemon["types"][0]["name"]} pokemon"
	result = Ermahgerd.translate(thing) 
	puts result 
end