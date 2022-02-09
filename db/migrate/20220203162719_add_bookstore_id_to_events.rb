class AddBookstoreIdToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :bookstore_id, :integer
  end
end
