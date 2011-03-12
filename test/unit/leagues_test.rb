require 'test_helper'

class LeaguesTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Leagues.new.valid?
  end
end
