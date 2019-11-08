class GamesController < ApplicationController

	before_action :preparar_form, only: [:new, :create, :edit, :update]

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
		puts @game.estadio
		puts 11111111111111111111111111111111111111111111
		puts @game.errors.inspect
		redirect_to @game
	end
    
    def edit
		@game = Game.find(params[:id])
	end

	def update
       @game = Game.find(params[:id])
       puts "eçfpr"
       puts @game.estadio
       puts @game.errors.inspect
       @game.update_attributes(game_params)

		redirect_to(action: "show", id: @game)   
    end

    def destroy
		@game = Game.find(params[:id])
		@game.destroy

		redirect_to(action: "index")
	end

    def confrontos
    	#@games = Game.find_by(round_id: 1)
    	@games =Game.where({round_id: 1})
    	puts "rfrejgurteij"
    	#puts @games.errors.inspect
    	#puts @games.length
    	#a = @game.team_home.nome +"X"+ @game.team_away.nome
    	#a = @games.team_home.nome
    	#b = @games.team_away.nome
    	#c = a +"X"+b
    	#puts @game.estadio
    	#puts c
    	#puts @game.team_away.nome
    	#redirect_to(action: "index")

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
