class User < ApplicationRecord
    has_secure_password

    validates :family_name, presence: true
    validates :given_name, presence: true
    validates :email, presence: true, uniqueness: true 
    validates :password, presence: true, length: { minimum: 6 }
end