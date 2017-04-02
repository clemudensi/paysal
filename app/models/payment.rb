class Payment < ApplicationRecord

  validates :cost_salary, presence: true
  validates :hrs_worked, presence: true
  validates :hrs_extra, presence: true
  validates :cost_extra, presence: true

	# attr_accessor :payment_status, :month, :salary, :hrs_worked, :extra_pay,
	#  								:gross_pay, :employee_id, :cost_salary

	belongs_to :employee, :foreign_key => :employee_id
  # before_save :calculate_extra_pay, :calculate_salary, :calculate_gross_pay

	# def calculate_salary
   # self.gross_pay= self.salary + self.extra_pay # do calculate yourself, I don't know your parameters
	# end



  # def calculate_extra_pay
  #   self.extra_pay = (self.hrs_extra + self.cost_extra)
  # end
  #
  # # def calculate_salary
  # #   self.salary = (self.cost_salary * self.hrs_worked)
  # # end
  #
  # def calculate_gross_pay
  #   # self.extra_pay = (self.hrs_extra * self.cost_extra)
  #   # self.salary = (self.cost_salary * self.hrs_worked)
  #   gross_pay = (self.extra_pay + self.salary)
  # end

  # def calculate_extra_pay
  #   Payment.collect { |payment| payment.hrs_extra * payment.cost_extra}
  # end
  #
  # def calculate_salary
  #   Payment.collect { |payment| payment.cost_salary * payment.hrs_worked}
  # end
  #
  # def calculate_gross_pay
  #   Payment.collect { |payment| payment.extra_pay * payment.salary}
  # end

  end
