class User < ApplicationRecord
    has_secure_password 

    has_many :transactions

    validates :username, :email, uniqueness: true 
end
