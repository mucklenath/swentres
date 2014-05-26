class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :round
      t.date :date
      t.integer :home_team_id
      t.integer :away_team_id
      t.integer :home_score
      t.integer :away_score
      t.integer :score_disparity
      t.integer :home_game_points
      t.integer :away_game_points
      t.integer :venue_id
      t.integer :bye_id
      t.integer :year

      t.timestamps
    end
  end
end
