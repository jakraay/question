require File.dirname(__FILE__) + '/../test_helper'

class ChoiceTest < ActiveSupport::TestCase
 
   test "required fields" do
    c = Choice.new
    assert_equal false, c.save
    c.text = 'hi'
    assert c.save
  end
end
