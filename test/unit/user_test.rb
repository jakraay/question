require File.dirname(__FILE__) + '/../test_helper'

class UserTest < ActiveSupport::TestCase
  
  test "required fields" do
    user = User.new
    assert_equal false, user.save
    user.age = 20
    assert_equal false, user.save
    user.location = 'London'
    assert user.save
  end
  
  test "user responses" do
    assert_equal 2, users(:one).responses.size
    assert_equal 'emusic', users(:one).responses.first.choice.text
    assert_equal 'last.fm', users(:one).responses.last.choice.text
    assert_equal questions(:one), users(:one).responses.first.question
  end
  
end
