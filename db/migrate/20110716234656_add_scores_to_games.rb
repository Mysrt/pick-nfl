class AddScoresToGames < ActiveRecord::Migration
  def self.up
    add_column :games, :home_team_score, :integer
    add_column :games, :away_team_score, :integer
  end

  def self.down
    remove_column :games, :away_team_score
    remove_column :games, :home_team_score
  end
end
