class Game < ApplicationRecord
	belongs_to :round
	has_many :disputes
	has_many :teams, through: :disputes 
	attr_accessor :team_home_id
	attr_accessor :team_away_id
	#poderia ser has_many: confrontos, throug: :dispute, source: :teams (no source que me referenciaria à classe)
end
