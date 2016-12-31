class AddPaymentToEmployee < ActiveRecord::Migration[5.0]
  def change
    add_reference :employees, :payment, foreign_key: true
  end
end
