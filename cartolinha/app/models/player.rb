class Player < ApplicationRecord
	belongs_to :team
	has_many :actions

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "50x50>"}, default_url: "/system/teams/:style/missing.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
