class Organization < ApplicationRecord
	validates :legal_name, presence: true
	
	has_many :employees, :dependent => :destroy
	has_many :contractors
end
