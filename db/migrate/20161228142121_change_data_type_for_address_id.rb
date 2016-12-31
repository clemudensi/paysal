class ChangeDataTypeForAddressId < ActiveRecord::Migration[5.0]
  def change
  	change_column :organizations, :address_id, :string
  end
end
