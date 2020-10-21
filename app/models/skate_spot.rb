class SkateSpot < ActiveRecord::Base 
    belongs_to :user
    validates :name, presence: true
    validates :location, presence: true
    validates :heat_index, presence: true, inclusion: { in: %w(Chill Moderate Hot Red Hot) }
    validates :skill_level, presence: true, inclusion: { in: %w(Beginner Amateur Professional Any Skill Level) }
    validates :description, presence: true
end 