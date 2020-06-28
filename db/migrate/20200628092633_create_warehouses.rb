class CreateWarehouses < ActiveRecord::Migration
  def change
    create_table :warehouses do |t|
      t.string :wh_code
      t.string :name
      t.integer :pincode
      t.integer :max_apacity

      t.timestamps null: false
    end
  end
end
