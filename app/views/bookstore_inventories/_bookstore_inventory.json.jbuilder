json.extract! bookstore_inventory, :id, :book_id, :bookstore_id, :price, :quantity, :created_at, :updated_at
json.url bookstore_inventory_url(bookstore_inventory, format: :json)
