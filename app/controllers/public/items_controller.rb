class Public::ItemsController < ApplicationController
  
  def index
    @items = Item.page(params[:page]).reverse_order 
    @genres = Genre.all
  end
  
  def show
    @item = Item.find(params[:id])
  end
  
  private
  def item_params
    params.require(:item).permit(:item_id,:name,:genre_id,:content,:introduction,:price,:is_active, :image)
  end
  
end