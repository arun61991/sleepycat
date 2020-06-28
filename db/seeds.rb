# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])

Warehouse.create(wh_code: DateTime.now.to_i.to_s(36), name: "Mumbai", pincode: 123456, max_apacity: 5000)
Warehouse.create(wh_code: DateTime.now.to_i.to_s(36), name: "New Delhi", pincode: 878786, max_apacity: 1000)
Warehouse.create(wh_code: DateTime.now.to_i.to_s(36), name: "Bangalore", pincode: 456345, max_apacity: 5000)


60.times do |i|
  temp = RandomNameGenerator.new
  product_name = temp.compose(3)
  Product.create(name: product_name, product_sku:  DateTime.now.strftime('%Q').to_i.to_s(36), price: rand(100..1000), item_count: rand(10..100), low_item_threshold: rand(10..20), warehouse_id: Warehouse.all.pluck(:id).shuffle.first)
end
