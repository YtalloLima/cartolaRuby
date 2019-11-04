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

	def new
		@round = Round.new
	end

	def create
		#nome = params[:nome]
		@round = Round.new(round_params)
		@round.save
		redirect_to(action: "show", id: @round)
	end

	def edit
		@round = Round.find(params[:id])
	end

	def update
		@round = Round.find(params[:id])
		@round.update_attributes(round_params)

		redirect_to(action: "show", id: @round)
	end	

	def round_params
		params.require(:round).permit(:nome)
	end
end
