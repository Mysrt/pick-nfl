class RemoveTypeFromTeams < ActiveRecord::Migration
  def self.up
    remove_column :teams, :type
  end

  def self.down
    add_column :teams, :type, :string
  end
end
