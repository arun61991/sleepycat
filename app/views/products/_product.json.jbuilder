json.extract! product, :id, :name, :product_sku, :price, :item_count, :low_item_threshold, :created_at, :updated_at
json.url product_url(product, format: :json)
