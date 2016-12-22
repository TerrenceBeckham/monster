class PhotosController < ApplicationController
  #before_action :authenticate_user

  def create
    @place = Place.find(params[:place_id])
    @place.photos.create(photo_params)
    redirect_to place_path(@place)
  end

  def photo_params
    params.require(:photo).permit(:caption, :picture)
  end
end

#Photo.create(caption: 'foo', place_id: @place.id, picture: 'path/name')
#Photo.create(photo_params.merge(place_id: @place.id))





