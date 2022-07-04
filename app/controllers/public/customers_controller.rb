class Public::CustomersController < ApplicationController
  def show
     @customer = Customer.find(params[:id])
  end

  def edit
     @customer = Customer.find(params[:id])
  end

  def update
  end

  def create
  end

  def withdraw
  end
  
  private
  def customer_params
    params.require(:customer).permit(:first_name,:last_name,:first_name_kana,:last_name_kana,:postal_code,:telephone_number, :is_active, :address)
  end
end