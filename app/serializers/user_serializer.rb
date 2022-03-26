class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :username, :profile_picture_url
  
  # has_many :posts, serializer: PostSerializer
  has_many :followers
  has_many :followees, serializer: FollowshipSerializer
end
