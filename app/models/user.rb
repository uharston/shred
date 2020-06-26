class User < ActiveRecord::Base
    has_many :skate_spots
    has_secure_password
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :email, presence: true
    validates :email, uniqueness: true
    # validates :password, confirmation: true
    # validates :password_confirmation, presence: true
end
