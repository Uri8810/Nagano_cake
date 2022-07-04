class RenameAmountColumnToCartItems < ActiveRecord::Migration[5.2]
  def change
    rename_column :cart_items, :amount, :quantity
  end
end
