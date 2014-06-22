class RantsController < ApplicationController
  def create
    rant = Rant.new
    rant.content = params[:rant][:content]
    rant.recipient_user_id = params[:rant][:recipient_user_id] #to pass this in I created a text field in the show view that should not appear.  this is to reference the wall on which the rant appears.
    rant.creator_user_name = params[:rant][:creator_user_name] #to pass this in I created a text field in the show view that should not appear.  this is a reference to the drafter of the rant.
    rant.save!
    redirect_to "/users/#{rant.recipient_user_id}"
   
  end
  
 
end