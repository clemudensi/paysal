class CreateJoinTableContractorContract < ActiveRecord::Migration[5.0]
  def change
    create_join_table :contractors, :contracts do |t|
      # t.index [:contractor_id, :contract_id]
      # t.index [:contract_id, :contractor_id]
    end
  end
end
