class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :product_sku
      t.integer :price
      t.integer :item_count
      t.integer :low_item_threshold
      t.integer :warehouse_id

      t.timestamps null: false
    end
  end
end
