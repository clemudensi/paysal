class CreatJoinTableEmployeeContract < ActiveRecord::Migration[5.0]
  def change
    create_join_table :employees, :contracts do |t|
      # t.index [:employee_id, :contract_id]
      # t.index [:contract_id, :employee_id]
    end
  end
end
