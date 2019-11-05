class GamesController < ApplicationController
	def index
		@games = Game.order :id
	end

	def show
		@game = Game.find(params[:id])
	end

	def new
		preparar_form
		@game = Game.new
	end

	def create
		puts "Entreeeeeiiii Aquuiiii"
		puts "team_id"
		puts teste
		@game = Game.new(game_params)
		@game.save
		redirect_to(action: "show", id: @game)
	end

	def game_params
		params.require(:game).permit(:dataJogo, :estadio, :cidade, :horario, :round_id)
	end

	def preparar_form
		@teams =  Team.order :nome
		@rounds = Round.order :nome
	end
end
