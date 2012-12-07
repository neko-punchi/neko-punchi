class Relation < ActiveRecord::Base
  belongs_to :category
  #belongs_to :sub_category
  #belongs_to :quiz
  
  attr_accessible :category_id, :sub_category_id, :quiz_id
end
