class CreateContractors < ActiveRecord::Migration[5.0]
  def change
    create_table :contractors do |t|
      t.integer :bank_account_id
      t.text :first_name
      t.text :middle_name
      t.text :last_name
      t.text :description

      t.timestamps
    end

    add_foreign_key :bank_accounts
  end
end
