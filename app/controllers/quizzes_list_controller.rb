class QuizzesListController < ApplicationController
  def index
    @objlist = Quiz.all
    #@category_list = Category.all
  end
  
  def edit
    @quiz_id = params[:quiz_id]
    #@category_id = params[:category]a
    @quiz_data = Relation.find_by_sql(["select DD.category,BB.sub_category, CC.* from relations AA inner join sub_categories BB on AA.sub_category_id = BB.id inner join quizzes CC on AA.quiz_id = CC.id inner join categories DD on AA.category_id = DD.id where CC.id = :quiz_id", :quiz_id => @quiz_id])
    #@relation = Relation.find(params[:quiz_id].to_i)
    #@relation.update_attributes(:category_id => params[:category_id])
   # redirect_to  :action  =>  "edit"
  
  end
end
