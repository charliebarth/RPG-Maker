class PerkSerializer
  include JSONAPI::Serializer
  attributes :name, :description, :modifiers
end
