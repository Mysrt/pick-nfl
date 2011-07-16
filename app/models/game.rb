class Game < ActiveRecord::Base
  belongs_to :home_team, :class_name => 'Team'
  belongs_to :away_team, :class_name => 'Team'

  has_many :picks

  validates_presence_of :home_team, :away_team

  def winner
    if home_team_score > away_team_score
      home_team
    elsif home_team_score = away_team_score
      nil
    else
      away_team
    end
  end

end
