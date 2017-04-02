class RemoveSalaryAndHrsWorkedAndExtraPayAndGrossPayFromPayment < ActiveRecord::Migration[5.0]
  def change
    remove_column :payments, :salary, :text
    remove_column :payments, :hrs_worked, :text
    remove_column :payments, :extra_pay, :text
    remove_column :payments, :gross_pay, :text
  end
end
