class CreateOrganizations < ActiveRecord::Migration[5.0]
  def change
    create_table :organizations do |t|
      t.text :legal_name
      t.text :legal_entity_code
      t.text :logo
      t.text :tax_id_no
      t.integer :address_id

      t.timestamps
    end
    add_foreign_key :addresses
  end
end
