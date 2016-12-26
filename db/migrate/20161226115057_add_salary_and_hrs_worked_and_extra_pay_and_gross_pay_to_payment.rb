class AddSalaryAndHrsWorkedAndExtraPayAndGrossPayToPayment < ActiveRecord::Migration[5.0]
  def change
    add_column :payments, :salary, :text
    add_column :payments, :hrs_worked, :text
    add_column :payments, :extra_pay, :text
    add_column :payments, :gross_pay, :text
  end
end
