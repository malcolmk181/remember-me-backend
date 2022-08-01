class SerializableThingRelationship < JSONAPI::Serializable::Resource
  type 'thing_relationships'
  attributes :created_at, :updated_at
  has_one :parent_thing
  has_one :child_thing
end
