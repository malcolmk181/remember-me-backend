class Thing < ApplicationRecord
    has_many :thing_relationships, foreign_key: :parent_thing_id
    has_many :child_things, through: :thing_relationships, source: :child_thing

    before_destroy :destroy_relationships

    private

    def destroy_relationships
        ThingRelationship.where(parent_thing_id: id).destroy_all
        ThingRelationship.where(child_thing_id: id).destroy_all
    end
end
