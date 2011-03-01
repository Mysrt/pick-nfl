class Season < ActiveRecord::Base
  belongs_to :league
  has_many :weeks
end
