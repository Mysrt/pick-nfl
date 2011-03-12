class CreatePicks < ActiveRecord::Migration
  def self.up
    create_table :picks do |t|
      t.string :type
      t.integer :spread
      t.integer :game_id
      t.integer :user_id
      t.integer :team_id
      t.timestamps
    end
  end

  def self.down
    drop_table :picks
  end
end
