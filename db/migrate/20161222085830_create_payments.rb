class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.text :employee_id
      t.boolean :payment_status
      t.date :month

      t.timestamps
    end
  end
end
