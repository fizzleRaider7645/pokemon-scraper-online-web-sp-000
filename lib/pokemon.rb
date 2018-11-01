class Pokemon
  attr_reader :id, :name, :type, :db
  attr_writer :hp
  
  def initialize(id:, name:, type:, hp: nil, db:)
    @id = id
    @name = name
    @type = type
    @hp = hp
    @db = db
  end
  
   def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end
  
  def self.find(id, db)
    pokemon_parts = db.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten
    
  end
  
  def alter_hp(id, db)
    p new_pokemon = self.find(id, db)
  end
end
