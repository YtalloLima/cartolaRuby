class AddAttachmentEscudoToTeams < ActiveRecord::Migration[5.2]
  def self.up
    change_table :teams do |t|
      t.attachment :escudo
    end
  end

  def self.down
    remove_attachment :teams, :escudo
  end
end
