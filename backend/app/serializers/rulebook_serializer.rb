class RulebookSerializer
  include JSONAPI::Serializer
  attributes :title, :description
end
