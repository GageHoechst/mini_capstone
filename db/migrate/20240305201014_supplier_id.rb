class SupplierId < ActiveRecord::Migration[7.1]
  def change
    add_column :suppliers, :suppliers_id, :integer
  end
end
