class Game < ApplicationRecord
	belongs_to :round
	has_many :disputes
	has_many :teams, through: :disputes 
	#poderia ser has_many: confrontos, throug: :dispute, source: :teams (no source que me referenciaria à classe)
end
