class AddWeekIdToGames < ActiveRecord::Migration
  def self.up
    add_column :games, :week_id, :integer
  end

  def self.down
    remove_column :games, :week_id
  end
end
