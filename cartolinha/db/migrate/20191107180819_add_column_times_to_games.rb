class AddColumnTimesToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :team_home_id, :integer
    add_column :games, :team_away_id, :integer
  end
end
