class Employee < ApplicationRecord
	before_save :format_name


	has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	belongs_to :organization
	has_many :payments, dependent: :destroy
	validates :first_name, presence: true
	validates :last_name, presence: true
  validates :date_of_birth, presence: true
  validates :gender, presence: true


  def format_name
    self.first_name = self.first_name.upcase
    self.last_name = self.last_name.upcase
    self.middle_name = self.middle_name.upcase
  end

  def to_s
    "#{first_name}, #{last_name}, #{middle_name}"
  end

end
