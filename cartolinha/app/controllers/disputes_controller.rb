class DisputesController < ApplicationController
 def receiveObject(disputeHome, disputeAway)
 	@disputeHome = Dispute.new 
 	@disputeHome.game_id = disputeHome.game_id
 	@disputeHome.team_id = disputeHome.team_id
 	@disputeHome.home_team = disputeHome.home_team
    @disputeHome.save
puts "Save 1"
    @disputeAway = Dispute.new
 	@disputeAway.game_id = disputeAway.game_id
 	@disputeAway.team_id = disputeAway.team_id
 	@disputeAway.home_team = disputeAway.home_team
 	@disputeAway.save
 	puts "Save 2"
 end	

 def dispute_params
	params.require(:dispute).permit(:game_id, :team_id, :home_team)
 end
end
