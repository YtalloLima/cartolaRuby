class ActionsController < ApplicationController
	def new
		puts "hahaha"
	end

	def avaliar_jogadores
		puts params[:id]
		puts params[:id1]
		#@players =Game.where({round_id: params[:id]})
	end
end
