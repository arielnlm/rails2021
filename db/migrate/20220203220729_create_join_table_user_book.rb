class CreateJoinTableUserBook < ActiveRecord::Migration[6.1]
  def change
    create_join_table :Users, :Books do |t|
       t.index [:user_id, :book_id]
       t.index [:book_id, :user_id]
    end
  end
end
