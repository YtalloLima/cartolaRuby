class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.datetime :dataJogo
      t.string :estadio
      t.string :cidade, limit: 50
      t.string :horario, limit: 5
      t.timestamps
    end
  end
end
