class Rant
  include Mongoid::Document
  
  belongs_to :user #is this doubling up on recipient_user_id below?
  
  
 
  field :content, type: String
  field :recipient_user_id, type: String
  field :creator_user_name, type: String
  
end