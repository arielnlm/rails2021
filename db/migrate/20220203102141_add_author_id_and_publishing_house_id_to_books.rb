class AddAuthorIdAndPublishingHouseIdToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :author_id, :integer
    add_column :books, :publishing_house_id, :integer
  end
end
