class SerializableThing < JSONAPI::Serializable::Resource
    type 'things'

    attributes :title, :content, :image_url, :url, :is_favorite, :updated_at

    has_many :child_things
end