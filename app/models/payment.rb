class Payment < ApplicationRecord
	# attr_accessor :payment_status, :month, :salary, :hrs_worked, :extra_pay,
	#  								:gross_pay, :employee_id

	belongs_to :employee, :foreign_key => :employee_id
	# belongs_to :organization, :foreign_key => :organization_id
end
