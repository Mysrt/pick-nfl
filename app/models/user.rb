class User < ActiveRecord::Base
  has_many :enrollments
  has_many :leagues, :through => :enrollments
  has_many :picks
end
