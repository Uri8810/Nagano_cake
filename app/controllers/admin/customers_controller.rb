class Admin::CustomersController < ApplicationController
  def index
    @customers = Customer.page(params[:page]).reverse_order
  end
  
  def show
    @customer = Customer.find(params[:id])
  end
  
  def edit
    @customer = Customer.find(params[:id])
    if @customer = Customer.find(params[:id])
        render "edit"
    else
        redirect_to admin_customers(params[:id])
    end
  end
  
  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      flash[:notice]="You have updated user successfully."
      redirect_to admin_customer_path(params[:id])
    else
      render :edit
    end
  end
  
  private
  def customer_params
    params.require(:customer).permit(:first_name,:last_name,:first_name_kana,:last_name_kana,:postal_code,:telephone_number, :is_active, :address)
  end
end