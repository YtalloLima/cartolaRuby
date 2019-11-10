class ActionsController < ApplicationController
	def new
		puts "hahaha"
	end

	def avaliar_jogadores
		puts params[:id]
	
		#@games =Game.where({id: params[:id]}).group('team_home_id', 'id')


        @games = Game.joins(team_home: :players).where({id: params[:id]}).group('team_home_id', 'id')

		puts "rfkrkfp"
		puts @games[0].team_home.nome
		puts @games[0].team_home.players[1].nome
		puts "xxx"
	end
end
