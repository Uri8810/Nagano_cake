class Public::ItemsController < ApplicationController
  
  def index
    @items = Item.page(params[:page]).reverse_order 
    @genres = Genre.all
  end
  
  def show
    
  end
  
  private
  def item_params
    params.require(:item).permit(:name,:genre_id,:content,:introduction,:price,:is_active, :image)
  end
  
end