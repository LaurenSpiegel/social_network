class Rating
  include Mongoid::Document
  
  belongs_to :restaurant
  belongs_to :user
  
  field :stars, type: Integer
  field :comments, type: String
  
end