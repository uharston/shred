class CreateSkateSpots < ActiveRecord::Migration
  def change
    create_table :skate_spots do |t| 
      t.string :name 
      t.string :location
      t.string :heat_index 
      t.string :skill_level 
      t.text :description
      t.timestamps null: true
    end 
  end
end
