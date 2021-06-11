class UserSerializer
  include JSONAPI::Serializer
  attributes :name, :code
end
