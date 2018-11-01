class Pokemon
  attr_accessor :id, :name, :type, :db
  
  def initialize(*arguments)
    
  end
  
   def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end
  
  def self.find(id, db)
    pokemon_parts = db.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten
    new_pokemon = Pokemon.new
    new_pokemon.id = pokemon_parts[0]
    new_pokemon.name = pokemon_parts[1]
    new_pokemon.type = pokemon_parts[2]
    new_pokemon
  end
end
