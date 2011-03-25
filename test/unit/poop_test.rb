require 'test_helper'

class PoopTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Poop.new.valid?
  end
end
