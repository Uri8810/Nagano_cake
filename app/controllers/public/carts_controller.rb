class CartsController < ApplicationController
  def create
    cart = current_customer.prepare_cart
    item = Item.find(params[:item_id])
    cart.cart_item.create!(item_id: item.id)
    redirect_to cart_item: :index
  end
end