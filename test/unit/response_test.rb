require File.dirname(__FILE__) + '/../test_helper'

class ResponseTest < ActiveSupport::TestCase
  
  test "required fields" do
    response = Response.new
    assert_equal false, response.save
    response.question = questions(:one)
    assert_equal false, response.save
    response.choice = choices(:emusic)
    assert_equal false, response.save
    response.user = users(:one)
    assert response.save
    
  end
end
