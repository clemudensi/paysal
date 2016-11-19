class CreateContracts < ActiveRecord::Migration[5.0]
  def change
    create_table :contracts do |t|
      t.datetime :valid_start
      t.datetime :valid_end
      t.text :title
      t.text :description

      t.timestamps
    end
  end
end
