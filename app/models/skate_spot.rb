class SkateSpot < ActiveRecord::Base 
    belongs_to :user
    validates :name, presence: true
    validates :location, presence: true
    validates :heat_index, presence: true
    validates :skill_level, presence: true
    validates :description, presence: true

end 