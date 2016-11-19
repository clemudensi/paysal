class CreateBankAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :bank_accounts do |t|
      t.text :bank_name
      t.text :branch_code
      t.integer :address_id
      t.text :swift_code
      t.text :account_no

      t.timestamps
    end
      add_foreign_key :addresses
  end
end
