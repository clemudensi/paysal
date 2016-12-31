class AddEmployeeToOrganization < ActiveRecord::Migration[5.0]
  def change
    add_reference :organizations, :employee, foreign_key: true
  end
end
