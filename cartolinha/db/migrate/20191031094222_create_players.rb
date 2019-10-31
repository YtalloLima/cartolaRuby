class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :nome, limit:100
      t.datetime :dataNascimento
      t.timestamps
    end
  end
end
