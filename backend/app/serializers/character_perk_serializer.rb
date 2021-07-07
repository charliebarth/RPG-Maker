class CharacterPerkSerializer
  include JSONAPI::Serializer
  attributes :character_id, :perk_id, :remaining_uses, :source
end
