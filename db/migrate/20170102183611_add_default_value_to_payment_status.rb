class AddDefaultValueToPaymentStatus < ActiveRecord::Migration[5.0]
  def up
    change_column :payments, :payment_status, :boolean, :default => false
  end

  def down
    change_column :payments, :payment_status, :boolean, :default => nil
  end
end
