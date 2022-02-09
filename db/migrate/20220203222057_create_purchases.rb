class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :purchases do |t|
      t.integer :user_id
      t.integer :book_id
      t.integer :bookstore_id
      t.integer :price

      t.timestamps
    end
  end
end
