class AddToOrganizations < ActiveRecord::Migration[5.0]
  # def change
  # 	change_column :organizations, :address_id, :text
  # end

  def up
    change_column :organizations, :address_id, :text
  end

  def down
    change_column :organizations, :address_id, :integer
  end

end
