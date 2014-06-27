class FriendsController < ApplicationController
  def create
    friend = Friend.new
    friend.recipient_id = params[:friend][:recipient_id] #to pass this in I created a text field in the show view that should not appear.  this is to reference the wall on which the friend appears.
    friend.friend_name = params[:friend][:friend_name] #to pass this in I created a text field in the show view that should not appear.  
    #if friend.errors.any?
     # flash[:friend_notice] = "We are already friends!" 
    #  redirect_to "/users/#{friend.recipient_id}"
   # else
    friend.save!
    redirect_to "/users/#{friend.recipient_id}"
   # end
  end
  
 
end