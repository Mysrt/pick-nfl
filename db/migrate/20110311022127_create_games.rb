class CreateGames < ActiveRecord::Migration
  def self.up
    create_table :games do |t|
      t.integer :score
      t.integer :week_id
      t.integer :home_team_id
      t.integer :away_team_id

      t.timestamps
    end
  end

  def self.down
    drop_table :games
  end
end
