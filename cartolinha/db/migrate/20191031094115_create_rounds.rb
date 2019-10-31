class CreateRounds < ActiveRecord::Migration[5.2]
  def change
    create_table :rounds do |t|
      t.string :nome, limit: 80
      t.timestamps
    end
  end
end
