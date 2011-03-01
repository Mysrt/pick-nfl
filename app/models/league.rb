class League < ActiveRecord::Base
  has_many :seasons
  has_many :enrollments
  has_many :users, :through => :enrollments
end
