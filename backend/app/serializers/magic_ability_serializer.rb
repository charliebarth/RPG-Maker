class MagicAbilitySerializer
  include JSONAPI::Serializer
  attributes :magic_types, :total_magic_points, :remaining_magic_points, :total_spell_slots, :remaining_spell_slots, :character_id
end
