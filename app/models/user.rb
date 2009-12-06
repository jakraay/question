class User < ActiveRecord::Base

  validates_presence_of :location
  validates_numericality_of :age, :allow_nil => false
  
  has_many :responses

end
