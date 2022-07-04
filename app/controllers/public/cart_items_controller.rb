class Public::CartItemsController < ApplicationController
  def index
    cart = current_customer.prepare_cart
    @items = cart.items
  end
  
  def create
    cart = current_customer.prepare_cart
    item = Item.find(params[:item_id])
    cart.cart_items.create!(item_id: item.id)
    redirect_to cart_items_path
    
  end

  def update
  end

  def destroy
    cart = current_customer.prepare_cart
    item = Item.find(params[:item_id])
    cart_item = cart.cart_items.find_by(item_id: item.id)
    cart_item.destroy
    redirect_to cart_items_path
  end

  private
  def cart_item_params
    params.require(:cart_item).permit(:cart_item_id,:item_id,:customer_id,:amount)
  end

end