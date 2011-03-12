require 'test_helper'

class PickTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Pick.new.valid?
  end
end
