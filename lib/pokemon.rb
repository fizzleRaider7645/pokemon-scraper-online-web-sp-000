class Pokemon
  attr_reader :id, :name, :type, :db
  
  def initialize
    
  end
  
   def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end
  
  def self.find(id, db)
    pokemon_parts = db.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten
    new_id = pokemon_parts[0]
    new_name = pokemon_parts[1]
    new_type = pokemon_parts[2]
    p new_pokemon = Pokemon.new(new_id, new_name, new_type)
  end
end
