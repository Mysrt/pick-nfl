class Enrollment < ActiveRecord::Base
  belongs_to :league
  belongs_to :user
end
