class AddUserIdColumnToSkateSpots < ActiveRecord::Migration
  def change
    add_column :skate_spots, :user_id, :integer
  end
end
