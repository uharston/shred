class User < ActiveRecord::Base
    has_many :skate_spots
    has_secure_password
end
