class SerializableThing < JSONAPI::Serializable::Resource
  type 'things'
  attributes :name, :content, :url, :image_url, :is_favorite, :updated_at
  has_many :child_things
end
