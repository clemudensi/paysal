class Organization < ApplicationRecord
	validates :legal_name, presence: true
	
	has_many :employees, :dependent => :destroy
	has_many :contractors
	has_many :payments, through: :employees
end
