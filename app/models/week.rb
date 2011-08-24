class Week < ActiveRecord::Base
  belongs_to :season
  has_many :games
  accepts_nested_attributes_for :games

end
