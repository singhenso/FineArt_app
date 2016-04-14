class ItemsController < ApplicationController
  def edit
  end

  def index
    @items= Item.all
  end

  def new
    @gallery = Gallery.find(params[:gallery_id])
    @artist = Artist.find(params[:artist_id])
    @item = Item.new
  end

  def create
    @gallery = Gallery.find(params[:gallery_id])
    @artist = Artist.find(params[:artist_id])
    @item = @artist.items.new(item_params)
    if @item.save
      redirect_to gallery_artist_items_path(@gallery, @artist)
    else
      render :new_item
  end
end

  def show
    @gallery = Gallery.find(params[:gallery_id])
    @artist = Artist.find(params[:artist_id])
    @item = Item.find_by(id: params[:id])
  end

  private

  def item_params
    params.require(:item).permit(:name, :genre, :medium, :location, :artist_id, :image)
  end
end
