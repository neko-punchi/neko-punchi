class QuizzesListController < ApplicationController
  def index
    @objlist = Relation.joins(:quiz, :category, :sub_category)
  end
end
