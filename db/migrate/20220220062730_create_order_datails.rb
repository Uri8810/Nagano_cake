class CreateOrderDatails < ActiveRecord::Migration[5.2]
  def change
    create_table :order_datails do |t|
      t.integer:order_id
      t.integer:item_id
      t.integer:amount
      t.integer:price
      t.integer:making_status
      t.datetime:created_at
      t.datetime:up

      t.timestamps
    end
  end
end
