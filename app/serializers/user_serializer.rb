class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first, :last, :email, :blogname, :blogdescription
  has_many :posts
end
