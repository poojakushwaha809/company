class RemoveCompanyAgain < ActiveRecord::Migration[5.2]
  def change

  	remove_column :users, :company_id, :integer
     remove_column :users, :my_company, :integer
     add_column :users, :my_company_id, :integer
  end
end
