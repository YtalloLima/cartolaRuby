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
		@game = Game.new(game_params)
		puts @game.round_id
		puts @game.time_id
		@game.save
		redirect_to(action: "show", id: @game)
	end

	def game_params
		params.require(:game).permit(:dataJogo, :estadio, :cidade, :horario, :round_id, :time_id)
	end

	def preparar_form
		@teams =  Team.order :nome
		@rounds = Round.order :nome
	end
end
