class Admin::ItemsController < ApplicationController
  def index
    @items = Item.all

    @genre = Genre.new
    @genres = Genre.all
  end

  def new
    @items = Item.all
    @item = Item.new
    @genres = Genre.all
  end

  def create
    @items = Item.new(item_params)
    @items.save
    redirect_to admin_items_path
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
  end

  def update
  end

  private
  def item_params
    params.require(:item).permit(:name, :image, :introduction, :price, :is_active, :genre_id)
  end

end
