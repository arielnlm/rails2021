class AddLocationIdToBookstores < ActiveRecord::Migration[6.1]
  def change
    add_column :bookstores, :location_id, :integer
  end
end
