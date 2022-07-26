class ThingSerializer < ActiveModel::Serializer
    attributes :id, :name, :content, :image_url, :url, :updated_at
    has_many :child_things
end