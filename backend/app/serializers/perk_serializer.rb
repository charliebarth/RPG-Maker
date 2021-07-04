class PerkSerializer
  include JSONAPI::Serializer
  attributes :name, :description, :modifiers, :original_class
end
