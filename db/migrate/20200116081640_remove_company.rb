class RemoveCompany < ActiveRecord::Migration[5.2]
  def change
  	remove_column :users, :company
     add_column :users, :my_company, :integer
  end
end
