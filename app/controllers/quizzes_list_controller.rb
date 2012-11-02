class QuizzesListController < ApplicationController
  def index
    @objlist = Relation.joins(:quiz, :category, :sub_category)
    @category_list = Category.all
  end
  
  def mod
    #@quiz_id = params[:quiz_id]
    #@category_id = params[:category]
    @relation = Relation.find(params[:quiz_id].to_i)
    @relation.update_attributes(:category_id => params[:category_id])
    redirect_to  :action  =>  "index"
  
  end
end
