class Game < ActiveRecord::Base
  has_one :home_team, :class_name => :team
  has_one :away_team, :class_name => :team

  has_many :picks
end
