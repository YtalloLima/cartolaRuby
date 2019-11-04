class TeamsController < ApplicationController
	def index
		@teams = Team.order :id
	end

	def show
		@team = Team.find(params[:id])
	end

	def new
		@team = Team.new
	end

	def create
		#nome = params[:nome]
		@team = Team.new(team_params)
		@team.save
		redirect_to(action: "show", id: @team)
	end

	def team_params
		params.require(:team).permit(:nome, :escudo)
	end
end
