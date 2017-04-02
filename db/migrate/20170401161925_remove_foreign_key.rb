class RemoveForeignKey < ActiveRecord::Migration[5.0]
  def change
    remove_reference :payments, :employee, foreign_key: true
  end
end
