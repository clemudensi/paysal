class AddHrsExtraAndCostExtraAndCostSalaryToPayments < ActiveRecord::Migration[5.0]
  def change
    add_column :payments, :hrs_extra, :integer
    add_column :payments, :cost_extra, :integer
    add_column :payments, :cost_salary, :integer
  end
end
