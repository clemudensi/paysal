class AddDateFoundedToOrganizations < ActiveRecord::Migration[5.0]
  def change
    add_column :organizations, :date_founded, :date
  end
end
