class PostSerializer < ActiveModel::Serializer
  attributes :id, :body, :image_url
  has_one :user
end