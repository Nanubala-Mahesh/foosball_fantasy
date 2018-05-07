json.extract! team, :id, :team_name, :player_one, :player_two, :who_won, :won_percentage, :created_at, :updated_at
json.url team_url(team, format: :json)
