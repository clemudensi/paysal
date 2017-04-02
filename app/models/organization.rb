class Organization < ApplicationRecord
	validates :legal_name, presence: true

	has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "50x50#" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	has_many :employees, :dependent => :destroy
	has_many :contractors
	has_many :payments, through: :employees
end
