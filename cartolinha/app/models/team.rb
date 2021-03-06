class Team < ApplicationRecord
	has_many :players
    has_many :games
  has_attached_file :escudo, styles: { medium: "300x300>", thumb: "30x30>"}, default_url: "/system/teams/:style/missing.jpg"
  validates_attachment_content_type :escudo, content_type: /\Aimage\/.*\z/
end
