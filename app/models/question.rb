class Question < ActiveRecord::Base

  validates_presence_of :text
  
  has_many :choices, :order => 'choice_index, text'

end
