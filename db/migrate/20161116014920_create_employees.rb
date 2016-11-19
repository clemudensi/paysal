class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.integer :bank_account_id
      t.text :employee_id
      t.date :date_of_birth
      t.date :date_joined_company
      t.date :date_left_company
      t.text :gender
      t.text :job_title
      t.text :first_name
      t.text :middle_name
      t.text :last_name
      t.text :residential_address
      t.integer :organization_id

      t.timestamps
    end
    add_foreign_key :bank_accounts, :organizations
  end
end
