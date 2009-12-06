class Choice < ActiveRecord::Base

  validates_presence_of :text
  
  has_many :responses

end
