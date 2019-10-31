class AddColumnCategoryIdToAction < ActiveRecord::Migration[5.2]
  def change
    add_column :actions, :category_id, :integer
  end
end
