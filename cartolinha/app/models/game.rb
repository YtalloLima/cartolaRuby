class Game < ApplicationRecord
	belongs_to :round
	has_and_belongs_to_many :teams
end
