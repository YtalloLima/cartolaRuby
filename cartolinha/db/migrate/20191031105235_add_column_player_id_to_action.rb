class AddColumnPlayerIdToAction < ActiveRecord::Migration[5.2]
  def change
    add_column :actions, :player_id, :integer
  end
end
