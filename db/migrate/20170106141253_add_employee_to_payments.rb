class AddEmployeeToPayments < ActiveRecord::Migration[5.0]
  def change
    add_reference :payments, :employee, foreign_key: true
  end
end

