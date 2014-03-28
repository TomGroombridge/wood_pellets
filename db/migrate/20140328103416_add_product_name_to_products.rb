class AddProductNameToProducts < ActiveRecord::Migration
  def change
    add_column :products, :ProductName, :string
  end
end
