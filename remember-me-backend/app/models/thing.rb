class Thing < ApplicationRecord
    has_many :thing_relationships, foreign_key: :parent_thing_id
    has_many :child_things, through: :thing_relationships, source: :child_thing
end
