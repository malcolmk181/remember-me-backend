class ThingRelationship < ApplicationRecord
    belongs_to :parent_thing, class_name: "Thing", foreign_key: :parent_thing_id
    belongs_to :child_thing, class_name: "Thing", foreign_key: :child_thing_id
end
