class Response < ActiveRecord::Base

  validates_presence_of :user_id, :choice_id, :question_id

  belongs_to :user
  belongs_to :choice
  belongs_to :question

end
