class GalleriesController < ApplicationController
  def index
    @galleries = Gallery.all
  end

  def new
    #@user = User.find(params[:user_id])
    @gallery = Gallery.new
  end

  def create
    #@user = User.find(params[:user_id])
    @gallery = Gallery.new(gallery_params)
    if @gallery.save
      redirect_to galleries_path
    else
      render :new_gallery
    end
  end

  def show
    @gallery = Gallery.find_by(id: params[:id])
  end

  private

  def gallery_params
    params.require(:gallery).permit(:location, :genre, :user_id)
  end
end
