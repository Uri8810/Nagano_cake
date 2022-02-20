class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer:item_id
      t.integer:customer_id
      t.string:address
      t.string:name
      t.integer:amount_billed
      t.integer:shipping_fee
      t.integer:payment_method
      t.integer:status
      t.datetime:created_at
      t.datetime:updated_at

      t.timestamps
    end
  end
end
