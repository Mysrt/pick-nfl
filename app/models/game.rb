class Game < ActiveRecord::Base
  belongs_to :home_team, :class_name => 'Team'
  belongs_to :away_team, :class_name => 'Team'

  has_many :ranked_picks
  accepts_nested_attributes_for :ranked_picks

  has_many :spread_picks
  accepts_nested_attributes_for :spread_picks

  belongs_to :week

  validates_presence_of :home_team, :away_team

  def winner
    if scores_defined? 
      if home_team_score > away_team_score
        home_team
      elsif home_team_score == away_team_score
        nil
      else
        away_team
      end
    end
  end

  def scores_defined?
    home_team_score? && away_team_score?
  end

end
