require 'test_helper'

class EndpointTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Endpoint.new.valid?
  end
end
