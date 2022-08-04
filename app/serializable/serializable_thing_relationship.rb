class SerializableThingRelationship < JSONAPI::Serializable::Resource
  type 'thing_relationships'
  attributes :parent_thing_id, :child_thing_id
  has_one :parent_thing
  has_one :child_thing
end
