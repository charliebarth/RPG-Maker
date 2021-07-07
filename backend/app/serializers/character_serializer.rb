class CharacterSerializer
  include JSONAPI::Serializer
  attributes :name, :strength, :dexterity, :consitution, :charisma, :intelligence, :wisdom, :will, :stress, :spellcaster, :max_inventory_weight, :inventory_weight, :inventory_units, :inventory, :description, :hunger, :thirst, :body_temp, :hit_points, :defenses, :weaknesses, :conditions, :proficiencies, :notes, :extras, :armor_class, :senses, :user_id
end
