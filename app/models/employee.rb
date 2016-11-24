class Employee < ApplicationRecord
	belongs_to :organization
  # validates :email, uniqueness: {case_sensitive: false}
end
