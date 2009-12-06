require File.dirname(__FILE__) + '/../test_helper'

class QuestionnairesControllerTest < ActionController::TestCase
 
  test "index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:questions)
    assert_equal questions(:two), assigns(:questions).first
    assert_equal questions(:one), assigns(:questions).last
  end
  

  
  
  
end
