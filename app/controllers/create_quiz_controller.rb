# encoding: utf-8
class CreateQuizController < ApplicationController
  def insert_quiz
    #quizziesテーブルにinsert
    quiz = Quiz.new(:text => params[:text], :sub_text => params[:sub_text], :choose => params[:choose], :answer => params[:answer], :hint => params[:hint])
    if quiz.save then
      #relationsテーブルにinsert
      relation = Relation.new(:category_id => params[:category], :sub_category_id => params[:sub_category], :quiz_id => quiz.id)
      if relation.save then
        @message = "問題作成が完了しました"
      end
    else
      @message = "DBへの登録に失敗しました"
    end
  end
end
