class UpdateOrderItemsTable < ActiveRecord::Migration[7.0]
  def change
    remove_reference :order_items, :order, index: true, foreign_key: true
    add_reference :order_items, :cart, null: false, foreign_key: true
  end
end
