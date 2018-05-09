module ApplicationHelper

	def find_team(id)
		Team.find_by(id: id).team_name
	end
end
