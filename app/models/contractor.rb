class Contractor < ApplicationRecord
	validates :first_name, presence: true
	
	belongs_to :organization
end
