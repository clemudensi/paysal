class Employee < ApplicationRecord
	belongs_to :organization
	
  validates :first_name, presence: true
end
