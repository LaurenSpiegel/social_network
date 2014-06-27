class UsersController < ApplicationController
  def new
  end
  
  def create
    user = User.new
    user.email = params[:user][:email]
    user.password = params[:user][:password]
    user.password_confirmation = params[:user][:password_confirmation]
    user.name = params[:user][:name]
    user.podcast = params[:user][:podcast]
    user.pizza_topping = params[:user][:pizza_topping]
    user.character = params[:user][:character]
    user.image = params[:user][:image]
    
    user.save!
    session[:user_id] = user.id.to_s
    redirect_to '/'
  end
  
  def index
    @users = User.all
    get_current_user
  end
  
  def show
    @users = User.all
    @user = User.find(params[:id]) #this refers to the person whose profile you are looking at rather than the current_user viewing.
    @rants = @user.rants
    @image_name = @user[:image_file_name]
    @friends = @user.friends
  
  end
  
  def edit
    
  end
  
  
  
  def update
    get_current_user
    @current_user.email = params[:user][:email]
    @current_user.password = params[:user][:password]
    @current_user.password_confirmation = params[:user][:password_confirmation]
    @current_user.name = params[:user][:name]
    @current_user.podcast = params[:user][:podcast]
    @current_user.pizza_topping = params[:user][:pizza_topping]
    @current_user.character = params[:user][:character]
    @current_user.image = params[:user][:image]
    
    @current_user.save!
  
    redirect_to '/' 
  end
  
end