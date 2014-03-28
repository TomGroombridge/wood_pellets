class RemoveImageUrlFromProduct < ActiveRecord::Migration
  def change
    remove_column :products, :ImageUrl, :string
  end
end
