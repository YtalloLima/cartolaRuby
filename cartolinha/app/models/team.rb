class Team < ApplicationRecord
	has_many :players
	has_many :disputes
	has_many :games, through: :disputes
end
