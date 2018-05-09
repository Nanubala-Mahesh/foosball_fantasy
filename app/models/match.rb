class Match < ApplicationRecord

	validate :validate_team
	before_save :save_who_one
	attr_accessor :validate_teams

	validates_presence_of :team_one, :team_two, :team_one_score, :team_two_score

	private
	def validate_team
		team1 = Team.find_by(id: self.team_one)
		team2 = Team.find_by(id: self.team_two)
		# binding.pry
		if team1.try(:won_percentage) == 100 || team2.try(:won_percentage) == 100
			# binding.pry
			errors.add(:validate_teams, " :- either of team won the Match before")
		end
	end

	def save_who_one
		if self.team_one_score > self.team_two_score
			self.who_one = self.team_one
			team = Team.find_by(id: self.team_one)
			team.won_percentage = 50 + team.won_percentage.to_i
			if !(team.won_percentage < 100) 
				team.update(won_percentage: team.won_percentage ) if team.won_percentage < 100.to_i
			end
		else
			# binding.pry
			self.who_one = self.team_two
			team = Team.find_by(id: self.team_two)
			team.won_percentage = 50 + team.won_percentage.to_i
			if !(team.won_percentage < 100)  
				# binding.pry
				team.update(won_percentage: team.won_percentage ) 
			end
		end
	end 	
end
