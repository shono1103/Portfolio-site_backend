class NecessaryProfile < ApplicationRecord
    belongs_to :user
    
    validates :date_of_birth, presence: true
    validates :residence, presence: true
    validates :job, presence: true
    
end
