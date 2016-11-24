class AddOrganizationToEmployees < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :organization, :reference
  end
end
