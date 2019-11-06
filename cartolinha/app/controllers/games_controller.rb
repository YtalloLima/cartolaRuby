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
		#criar game
		@game = Game.new(game_params)
		@game.save
        
        #criar disputa
        #time mandante
		objDisputa = DisputesController.new
		@dispute = Dispute.new   
		@dispute.game_id = @game.id
		@dispute.team_id = @game.team_home_id
		@dispute.home_team = true

		#time visitante
		@dispute2 = Dispute.new 
		@dispute2.game_id = @game.id
		@dispute2.team_id = @game.team_away_id
		@dispute2.home_team = false

		objDisputa.receiveObject(@dispute, @dispute2)
		#objDisputa.receiveObject()
		redirect_to(action: "show", id: @game)
	end

	def game_params
		params.require(:game).permit(:dataJogo, :estadio, :cidade, :horario, :round_id, :team_home_id, :team_away_id)
	end

	def preparar_form
		@teams =  Team.order :nome
		@rounds = Round.order :nome
	end
end
