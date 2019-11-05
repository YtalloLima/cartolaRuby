class Game < ApplicationRecord
	belongs_to :round
	has_many :disputes
	has_many :teams, through: :disputes 
	attr_accessor :time_id
	#poderia ser has_many: confrontos, throug: :dispute, source: :teams (no source que me referenciaria à classe)
end
