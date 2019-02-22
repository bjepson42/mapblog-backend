class LocationSerializer < ActiveModel::Serializer
  attributes :id, :latitude, :longitude, :name
  has_many :posts
end
