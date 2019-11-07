class GamesController < ApplicationController

	before_action :preparar_form, only: [:new, :create, :edit, :udpdate]

	def index
		@games = Game.order :id
	end

	def show
		@game = Game.find(params[:id])
	end

	def new
		@game = Game.new
	end

	def create
		@game = Game.new(game_params)
		@game.save
		puts 11111111111111111111111111111111111111111111
		puts @game.errors.inspect
		redirect_to @game
	end

	private

	def game_params
		params.require(:game).permit(:dataJogo, :estadio, :cidade, :horario, :round_id, :team_home_id, :team_away_id)
	end

	def preparar_form
		@teams =  Team.order :nome
		@rounds = Round.order :nome
	end
end
