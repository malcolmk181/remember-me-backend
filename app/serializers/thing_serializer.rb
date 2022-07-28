class ThingSerializer < ActiveModel::Serializer
    attributes :id, :name, :content, :image_url, :url, :is_favorite, :updated_at
    has_many :child_things
end