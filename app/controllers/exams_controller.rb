# -*- coding: utf-8 -*-
require 'pp'
class ExamsController < ApplicationController
  # GET /exams
  # GET /exams.json
  def index
    #create quizzes
    @objlist = []
    #i = 0
##    @quizzes.each{ |q|
##      quiz = Quiz.new
##      quiz.id = i
##      quiz.text = q.text
##      quiz.choose = q.choose
##      quiz.answer = q.answer
##      @objlist << quiz
##      i += 1
##    }
    #list = Quiz.all
    #list.each {|obj|
    #   quiz = Quiz.new
    #   puts "text:" + obj.text
    #   puts "sub text:" + obj.sub_text.to_s
    #   puts "choose:" + obj.choose
    #  
    #  quiz.id = i + 1
    #  quiz.text = obj.text
    #  quiz.sub_text = obj.sub_text
    #  quiz.choose = obj.choose
    #  @objlist << quiz
    #}

    #objlistには問題を詰め込む（DBから取得した値で）
    #@objlist << Relation.joins(:quiz, :category, :sub_category)
    #@objlist.map { |x| p x}
    #relations = Relation.find(:all, :conditions=>[ "category_id=?", 1])
    ##Relation.find(:all, :conditions=>[ "category_id=?", 1])

    items = Relation.find_by_sql(["select BB.sub_category, CC.* from relations AA inner join sub_categories BB on AA.sub_category_id = BB.id inner join quizzes CC on AA.quiz_id = CC.id",
    :category => 1])

    items.each {|item|
         data = {}
         data["quiz_id"] = item["id"]
         data["sub_category"] = item["sub_category"]
         data["text"] = item["text"]
         data["sub_text"] = item["sub_text"]
         data["choose"] = item["choose"]
         @objlist << data
    }


    #選択問題サンプル
    #30.times.each { |i|
    #  quiz = Quiz.new
    #  quiz.id = i + 31
    #  quiz.text = 'test' + i.to_s
    #  quiz.sub_text = ''
    #  quiz.choose = "(1)aaa, (2)bbbb, (3)ccc"
    #  @objlist << quiz
    #}

    
    #入力問題サンプル
    10.times.each { |i|
      quiz = Quiz.new
      quiz.id = i + 61
      quiz.text = 'ファイルの末尾数行を表示するコマンドを答えなさい！'
      quiz.sub_text = 'hey, are you watching me?'
      
      #@objlist << quiz
    }
    #問題をランダムにシャッフル
    @objlist.shuffle!
  end


  def answer
    quiz_id = params[:quiz_id]
    answer = params[:answer]
    
    quiz = Quiz.find(quiz_id)
    message = "とても残念だよ、君なら解けると思ったんだが・・・　不正解だ"
    status = "incorrect"
    if quiz.answer == answer.strip then
      message = "よくできたね！正解だよ。"
      status = "correct"
    end
    #render text: message
    
    render json: {status: status, msg: message}
    #redirect_to "/exams"
  end
end
