class RatingsController < ApplicationController
  def create
    rating = Rating.new
    rating.stars = params[:rating][:stars]
    rating.comments = params[:rating][:comments]
    rating.restaurant_id = params[:rating][:restaurant_id]
    rating.user = @current_user
    rating.save!
    redirect_to "/restaurants/#{rating.restaurant_id}"
  end
end