class Action < ApplicationRecord
	belongs_to :category
	belongs_to :player
end
