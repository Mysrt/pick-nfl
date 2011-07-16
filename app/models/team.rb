class Team < ActiveRecord::Base
  belongs_to :game
  
  validates_presence_of :name

  def self.teams_hash
    a = {}
    self.all.each {|x| a.merge!({x.name => x.id}) } 
    a
  end

end
