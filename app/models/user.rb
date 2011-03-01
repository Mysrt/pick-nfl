class User < ActiveRecord::Base
  include Clearance::User

  has_many :enrollments
  has_many :leagues, :through => :enrollments
  has_many :picks
end
