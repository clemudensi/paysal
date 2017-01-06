class RemoveEmployeeIdFromPayment < ActiveRecord::Migration[5.0]
  def change
    remove_column :payments, :employee_id, :text
  end
end
