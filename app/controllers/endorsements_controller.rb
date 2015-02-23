class EndorsementsController < ApplicationController

  def create
  @photo = Photo.find(params[:photo_id])
  @photo.endorsements.create
  redirect_to photos_path
end

end
