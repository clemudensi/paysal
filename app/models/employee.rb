class Employee < ApplicationRecord
	# attr_accessible	:employee_id, :first_name, :middle_name, :last_name, :organization_id, 
	# 								:payment_id

	has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	belongs_to :organization
	has_many :payments, :foreign_key => :payment_id
	validates :first_name, presence: true
end
