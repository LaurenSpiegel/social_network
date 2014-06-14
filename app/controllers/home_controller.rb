class HomeController < ApplicationController
  def index
    @ratings = Rating.all
  end
end