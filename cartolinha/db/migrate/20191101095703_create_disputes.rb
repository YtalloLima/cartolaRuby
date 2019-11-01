class CreateDisputes < ActiveRecord::Migration[5.2]
  def change
    create_table :disputes do |t|
      t.references :game, foreign_key: true
      t.references :team, foreign_key: true
      t.boolean :home_team

      t.timestamps
    end
  end
end
