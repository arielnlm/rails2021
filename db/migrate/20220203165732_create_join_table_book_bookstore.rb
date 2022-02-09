class CreateJoinTableBookBookstore < ActiveRecord::Migration[6.1]
  def change
    create_join_table :Books, :Bookstores do |t|
       t.index [:book_id, :bookstore_id]
       t.index [:bookstore_id, :book_id]
    end
  end
end
