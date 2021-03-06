class ArtistsController < ApplicationController
  def edit
  end

  def index
    @gallery = Gallery.find(params[:gallery_id])
    @artist = @gallery.artists
  end

  def create
    @gallery = Gallery.find(params[:gallery_id])
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to gallery_artists_path
    else
      render :new
    end
  end

  def new
    @gallery = Gallery.find_by(id: params[:gallery_id])
    @artist = Artist.new
  end

  def show
    @artist = Artist.find_by(id: params[:id])
  end

  def destroy
    @artist = Artist.find(params[:id])
    @gallery = Gallery.find(params[:gallery_id])
    @artist.destroy
    redirect_to gallery_path(@gallery)
  end

private


  def artist_params
    params.require(:artist).permit(:name, :genre, :location, :medium, :gallery_id)
  end
end
