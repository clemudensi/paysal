class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.text :country
      t.text :state
      t.text :city
      t.text :postal_address
      t.text :street_address

      t.timestamps
    end
  end
end
