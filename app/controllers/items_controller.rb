class ItemsController < ApplicationController
  def edit
  end

  def index
    @items= Item.all
  end

  def new
    @items = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to items_path
    else
      render :new_item
  end
end

  def show
    @item = Item.find_by(id: params[:id])
  end

  private

  def item_params
    params.require(:item).permit(:name, :genre, :medium, :location, :artist_id)
  end
end
