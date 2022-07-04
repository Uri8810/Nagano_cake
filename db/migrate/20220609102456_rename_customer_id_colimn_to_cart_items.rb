class RenameCustomerIdColimnToCartItems < ActiveRecord::Migration[5.2]
  def change
    rename_column :cart_items, :customer_id, :cart_id
  end
end
