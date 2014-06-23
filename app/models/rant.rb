class Rant
  include Mongoid::Document
  
  belongs_to :creator, class_name: 'User' 
  belongs_to :recipient, class_name: 'User'
  
 
  field :content, type: String
  #field :recipient_user_id, type: String
  field :creator_user_name, type: String
  
end