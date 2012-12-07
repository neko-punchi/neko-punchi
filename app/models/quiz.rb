class Quiz < ActiveRecord::Base
  has_one :relation
  accepts_nested_attributes_for :relation
  attr_accessible :text, :sub_text, :choose ,:answer, :hint 
end
