class AddCategoryIdToPlaces < ActiveRecord::Migration[5.0]
  def change
  	remove_column :places, :category_id
  	add_column :places, :category_id, :integer
    add_foreign_key :places, :categories
  end
end
