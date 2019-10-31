class RoundsController < ApplicationController
	def index
		@rounds = Round.order :nome
	end
end
