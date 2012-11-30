class Quiz < ActiveRecord::Base
  has_one :relation
  
  attr_accessible :text, :sub_text, :choose ,:answer, :hint 
end
