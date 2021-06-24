class CharacterItemSerializer
  include JSONAPI::Serializer
  attributes :character_id, :item_id, :attuned, :stored, :carried, :in_use, :notes, :inventory_weight, :inventory
end
