require File.dirname(__FILE__) + '/../test_helper'

class QuestionTest < ActiveSupport::TestCase
  
  test "required fields" do
    question = Question.new
    assert_equal false, question.save
    question.text = 'hi'
    assert question.save
  end
  
  test "question has choices" do
    assert_equal false, questions(:one).choices.empty?
    assert_equal choices(:emusic), questions(:one).choices.first
  end
  
end
