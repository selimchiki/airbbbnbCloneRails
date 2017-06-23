class PhotosController < ApplicationController

  def destroy
    @photo = Photo.find(params[:id]) # correspond à l'id de la photo concernée

    room = @photo.room

    @photo.destroy

    @photos = Photo.where(room_id: room.id) #réactualise la liste des photos
     respond_to :js # suppression immédiate
  end
end