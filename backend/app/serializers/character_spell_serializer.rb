class CharacterSpellSerializer
  include JSONAPI::Serializer
  attributes :magic_ability_id, :spell_id
end
