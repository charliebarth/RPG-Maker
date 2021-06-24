class SpellSerializer
  include JSONAPI::Serializer
  attributes :name, :system, :description, :modifiers, :requirements, :point_cost, :spell_slot_cost, :master_spell_list_id
end
