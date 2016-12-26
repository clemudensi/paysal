class AddGenderAndJobTitleAndOrganizationAndOrganizationIdToContractor < ActiveRecord::Migration[5.0]
  def change
    add_column :contractors, :gender, :text
    add_column :contractors, :job_title, :text
    add_column :contractors, :organization, :text
    add_column :contractors, :organization_id, :text
  end
end
