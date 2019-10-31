class AddColumnRoundIdToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :round_id, :integer
  end
end
