class RemovePaymentForeignKey < ActiveRecord::Migration[5.0]
  def change
    remove_reference :employees, :payment, foreign_key: true
  end
end
