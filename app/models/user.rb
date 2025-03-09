class User < ApplicationRecord
    has_secure_password

    has_one :necessary_profile, dependent: :destroy
    has_one :option_profile, dependent: :destroy


    accepts_nested_attributes_for :necessary_profile
    accepts_nested_attributes_for :option_profile

    validates :name_order, presence: true
    validates :family_name, presence: true
    validates :given_name, presence: true
    validates :email, presence: true, uniqueness: true 
    validates :password, presence: true, length: { minimum: 6 }

end