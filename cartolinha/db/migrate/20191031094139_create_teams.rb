class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :nome, limit: 50
      t.timestamps
    end
  end
end
