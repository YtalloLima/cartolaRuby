class TeamsController < ApplicationController
	def index
		@teams = Team.order :id
	end
end
