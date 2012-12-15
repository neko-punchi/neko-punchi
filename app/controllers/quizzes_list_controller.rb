class QuizzesListController < ApplicationController
require 'pp'
  def index
    @objlist = Quiz.all
    #@category_list = Category.all
  end
  
  def edit
    quiz_id = params[:quiz_id]
    #@category_id = params[:category]a
    @quiz_data = Relation.find_by_sql(["select DD.category,BB.sub_category, CC.* from relations AA inner join sub_categories BB on AA.sub_category_id = BB.id inner join quizzes CC on AA.quiz_id = CC.id inner join categories DD on AA.category_id = DD.id where CC.id = :quiz_id", :quiz_id => quiz_id])
    #@relation = Relation.find(params[:quiz_id].to_i)
    @quiz = Quiz.find(params[:quiz_id])
    #@relation.update_attributes(:category_id => params[:category_id])
   # redirect_to  :action  =>  "edit"
  end
  
  def update_table
    quiz_id = params[:quiz_id]
    #quizzesテーブルのデータをparamの値に更新
    quiz = Quiz.find_by_id(quiz_id)
    Quiz.transaction do
      quiz.text = params[:text].strip
      quiz.sub_text = params[:sub_text].strip
      quiz.choose = params[:choose].strip
      quiz.answer = params[:answer].strip
      quiz.hint = params[:hint].strip
      quiz.save
   
      #relationテーブルの変更
      relation = Relation.find_by_quiz_id(quiz_id)
    # findの結果、レコードが存在すれば更新し、0件(nil)の場合は新規に追加する。
      if relation then
        relation.category_id = params[:category].to_i
        relation.sub_category_id = params[:sub_category]
      else
        relation = Relation.new(:quiz_id => quiz_id, :category_id => params[:category], :sub_category_id => params[:sub_category])
      end
      relation.save
    end
      #成功時の処理
      redirect_to :controller => "quizzes_list", :action => "edit", :quiz_id => quiz_id 
    #resque => e
      #TODO 失敗時の処理
  end
  def select_category
    @subcategory = SubCategory.find_all_by_category_id(params[:category_id])
    pp @subcategory
    puts @subcategory.length
    #@subcategory = "test"
    render
  end
end
