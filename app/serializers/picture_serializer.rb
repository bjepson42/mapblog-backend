class PictureSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :url
  belongs_to :post
end
