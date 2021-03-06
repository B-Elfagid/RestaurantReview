class User < ApplicationRecord
    has_many :reviews 
    has_many :restaurants, through: :reviews
    has_secure_password 
    validates :username, uniqueness: true, presence: true 
    validates :email, uniqueness: true, presence:true 
end
