class User
  include Mongoid::Document
  include ActiveModel::SecurePassword
  include Mongoid::Paperclip
  
  field :email, type: String
  field :password_digest, type: String
  field :name, type: String
  field :podcast, type: String
  field :pizza_topping, type: String
  field :character, type: String
  
  validate :email, presence: true, uniqueness: true
  
  has_secure_password
  
  has_many :rants
  
  has_mongoid_attached_file :image 
  validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/]
  
end