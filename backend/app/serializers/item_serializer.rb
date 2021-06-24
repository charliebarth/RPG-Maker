class ItemSerializer
  include JSONAPI::Serializer
  attributes :name, :description, :storage, :max_inventory_weight, :inventory_units
end
