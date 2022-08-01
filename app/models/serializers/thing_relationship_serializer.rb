class SerializableThingRelationship < JSONAPI::Serializable::Resource
    type 'thing_relationships'

    attributes :parent_thing, :child_thing
end