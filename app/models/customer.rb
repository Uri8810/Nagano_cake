class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :cart, dependent: :destroy
         
  def full_name
    self.first_name + " " + self.last_name
  end
  
  def current_customer
    @current_customer ||= Customer.find_by(id: session[:customer_id])
  end
  
  def prepare_cart
    cart || create_cart
  end
  
end
