class PlayersController < ApplicationController
	def index
		@players = Player.order :id
	end

	def show
		@player = Player.find(params[:id])
	end

	def new
		preparar_form
		@player = Player.new
	end

	def create
		@player = Player.new(player_params)
		puts @player.nome
		@player.save
		redirect_to(action: "show", id: @player)
    end

    def edit
    	preparar_form
		@player = Player.find (params[:id])
	end

	def update
		@player = Player.find(params[:id])
		@player.update_attributes(player_params)

		redirect_to(action: "show", id: @player)
	end	

	def destroy
		@player = Player.find(params[:id])
		@player.destroy

		redirect_to(action: "index")
	end

	def player_params
		params.require(:player).permit(:nome, :dataNascimento, :avatar, :team_id)
	end

	def preparar_form
		@teams =  Team.order :nome
	end
end
