class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :size
      t.string :color
      t.string :brand
      t.integer :stock_quantity

      t.timestamps
    end
  end
end
