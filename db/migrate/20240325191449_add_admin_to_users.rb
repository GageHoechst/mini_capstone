class AddAdminToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :users, :string
    add_column :users, :admin, :string
    add_column :users, :boolean, :string
    add_column :users, :default, :string
    add_column :users, :false, :string
  end
end
