class AddSpreadToGames < ActiveRecord::Migration
  def self.up
    add_column :games, :spread, :string
  end

  def self.down
    remove_column :games, :spread
  end
end
