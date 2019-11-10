class ActionsController < ApplicationController
	def new
		puts "hahaha"
	end

	def avaliar_jogadores
		@games = Game.joins("inner join Teams on Teams.id = Games.team_home_id or Teams.id = Games.team_away_id
		inner join Players on Players.team_id = Teams.id").where({id: params[:id]}).group('team_home_id', 'id')

		puts "rfkrkfp"
		puts @games[0].team_home.nome
		puts @games[0].team_home.players[1].nome
		puts "xxx"
	end
end
