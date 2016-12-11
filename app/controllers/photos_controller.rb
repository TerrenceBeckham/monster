class PhotosController < ApplicationController
  before_action :authenticate_user!
  def create
    @photo = photo.find.params.require(:photo).permit()
    
  end