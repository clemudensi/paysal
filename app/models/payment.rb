class Payment < ApplicationRecord

  validates :cost_salary, presence: true
  validates :hrs_worked, presence: true
  validates :hrs_extra, presence: true
  validates :cost_extra, presence: true
  validates_uniqueness_of :employee_id

	belongs_to :employee, :foreign_key => :employee_id
  end
