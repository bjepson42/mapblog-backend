class PostSerializer < ActiveModel::Serializer
  attributes :id, :name, :body, :location_id
  belongs_to :user
  belongs_to :location
end
