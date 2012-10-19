class SubCategory < ActiveRecord::Base
  belongs_to :category
  has_one :relation
end
