class User < ApplicationRecord
  include ActiveModel::SecurePassword
  has_one_attached :profile_picture
  has_many :posts
  has_secure_password

  validates_presence_of :first_name, :last_name, :username, :email 
  validates_uniqueness_of :username, :email, case_sensitive: false
  validates :first_name, format: { with: /\A[a-zA-Z]+\z/,
      message: "only allows letters" }
  validates :last_name, format: { with: /\A[a-zA-Z]+\z/,
      message: "only allows letters" }


  def profile_picture_url
    if profile_picture.attached?
      profile_picture.blob.url
    end
  end

end
