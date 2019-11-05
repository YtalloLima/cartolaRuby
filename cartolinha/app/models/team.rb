class Team < ApplicationRecord
	has_many :players
	has_many :disputes
	has_many :games, through: :disputes

  has_attached_file :escudo, styles: { medium: "300x300>", thumb: "30x30>" }
  validates_attachment_content_type :escudo, content_type: /\Aimage\/.*\z/
end
