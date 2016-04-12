class ArtistsController < ApplicationController
  def edit
  end

  def index
    @artist = Artist.all
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to artists_path
    else
      render :new_artist
    end
  end

  def new
    @gallery = Gallery.find_by(id: params[:id])
    @artist = Artist.new
  end

  def show
    @artist = Artist.find_by(id: params[:id])
  end

  private


  def artist_params
    params.require(:artist).permit(:genre, :location, :medium, :gallery_id)
  end
end
