json.array!(@games) do |game|
  json.extract! game, :id, :round, :date, :home_team_id, :away_team_id, :home_score, :away_score, :score_disparity, :home_game_points, :away_game_points, :venue_id, :bye_id, :year
  json.url game_url(game, format: :json)
end
