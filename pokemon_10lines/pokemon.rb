['mongo','pokegem','ermahgerd','pry-byebug'].each(&method(:require))
client = Mongo::Client.new([ '127.0.0.1:27017' ], :database => 'pokemon_db')
db = client["pokemon_db"]
db.drop()
(1..10).to_a.each { |i| db.insert_one(JSON.parse(Pokegem.get "pokemon", i)) }
puts "\n \n WHERCH PERKERMAHN DER U WERNT TER SER?"
input = gets.chomp
selected = db.find(:name => input.capitalize).first()
translated = Ermahgerd.translate("oh my god #{selected[:name]} is a #{selected[:types].first()[:name]} pokemon!")
puts "\n \n #{translated} \n Pokedex No. #{selected[:pkdx_id]} | Attack #{selected[:attack]} | Defense #{selected[:defense] } | Speed #{selected[:speed]} | SpAtk #{selected[:sp_atk]} | SpDef #{selected[:sp_def]}"