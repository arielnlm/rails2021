class AddLocationIdToPublishingHouses < ActiveRecord::Migration[6.1]
  def change
    add_column :publishing_houses, :location_id, :integer
  end
end
