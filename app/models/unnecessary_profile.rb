class UnnecessaryProfile < ApplicationRecord
    belongs_to :user

    validates :place_of_birth, presence: true
    validates :bio, presence: true
end
