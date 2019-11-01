class RoundsController < ApplicationController
	def index
		@rounds = Round.order :id
	end

	def show
		@round = Round.find(params[:id])
	end

	def destroy
		@round = Round.find(params[:id])
		@round.destroy

		redirect_to(action: "index")
	end
end
