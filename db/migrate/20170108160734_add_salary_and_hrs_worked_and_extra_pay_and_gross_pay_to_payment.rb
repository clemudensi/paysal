class AddSalaryAndHrsWorkedAndExtraPayAndGrossPayToPayment < ActiveRecord::Migration[5.0]
  def change
    add_column :payments, :salary, :integer
    add_column :payments, :hrs_worked, :integer
    add_column :payments, :extra_pay, :integer
    add_column :payments, :gross_pay, :integer
  end
end
