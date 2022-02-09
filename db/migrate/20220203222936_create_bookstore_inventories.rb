class CreateBookstoreInventories < ActiveRecord::Migration[6.1]
  def change
    create_table :bookstore_inventories do |t|
      t.integer :book_id
      t.integer :bookstore_id
      t.integer :price
      t.integer :quantity

      t.timestamps
    end
  end
end
