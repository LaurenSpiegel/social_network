class Friend
  include Mongoid::Document
  
  
  belongs_to :recipient, class_name: 'User'
  
 
  field :friend_name, type: String
  
 #validates_uniqueness_of :friend_name

  
end