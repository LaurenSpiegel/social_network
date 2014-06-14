class Restaurant
  include Mongoid::Document
  
  has_many :ratings
  
  field :name, type: String
end

