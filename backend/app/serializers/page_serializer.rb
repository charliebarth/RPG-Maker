class PageSerializer
  include JSONAPI::Serializer
  attributes :title, :description, :rulebook_id
end
