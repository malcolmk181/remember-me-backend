class ThingRelationshipSerializer < ActiveModel::Serializer
    attributes :id, :parent_thing_id, :child_thing_id
end