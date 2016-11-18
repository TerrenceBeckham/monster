class PlacesController < ApplicationController
before_action :authenticate_user!, only: [:new, :create]  #This relates to Devise and only allows the above actions to be used if user is authenticated


  def index
    @places = Place.page(params[:page]).per(1)
  end
  def new
    @place =Place.new
  end

  def create
    current_user.places.create(place_params)
   
    #Place.create(place_params)
    redirect_to root_path
  end

  private


  def place_params
    params.require(:place) .permit(:name, :description, :address)

    
  end
end
