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
		@team = Team.new(team_params)
		@team.escudo = params[:team][:escudo] 
		@team.save
		redirect_to(action: "show", id: @team)
	end

	def edit
		@team = Team.find(params[:id])
	end

	def update
		@team = Team.find(params[:id])
		@team.update_attributes(team_params)

		redirect_to(action: "show", id: @team)
	end	

	def destroy
		@team = Team.find(params[:id])
		@team.destroy

		redirect_to(action: "index")
	end

	def team_params
		params.require(:team).permit(:nome, :escudo)
	end
end
