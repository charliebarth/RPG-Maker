class CharacterSerializer
  include JSONAPI::Serializer
  attributes :name, :strength, :dexterity, :consitution, :charisma, :intelligence, :wisdom, :will, :stress, :resolve, :spellcaster, :max_inventory_weight, :inventory_weight, :inventory_units, :inventory, :user_id
end