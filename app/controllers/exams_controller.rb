# -*- coding: utf-8 -*-
require 'pp'
class ExamsController < ApplicationController
  # GET /exams
  # GET /exams.json
  def index

    items = Relation.find_by_sql(["select BB.sub_category, CC.* from relations AA inner join sub_categories BB on AA.sub_category_id = BB.id inner join quizzes CC on AA.quiz_id = CC.id",
    :category => 1])

    @objlist = []

    id_array = items.map {|x|
        x["id"]
    }
    results = Result.where(:quiz_id => id_array).all
    
    rates = {}
    results.each {|x|
        count = x.correct + x.wrong
        if count == 0 then
            rates[x.quiz_id] = 0
        else
            rates[x.quiz_id] = x.correct * 100 / count
            printf("rate(%d) = x.correct(%d) * 100 / count(%d)\n", rates[x.quiz_id] ,x.correct, count)
        end
    }
    pp rates
        
    #printf("result:[%d] correct=%d wrong=%d\n", x.quiz_id, x.correct, x.wrong)} 
    
    items.each {|item|
         data = {}
         quiz_id = item["id"]
         data["quiz_id"] = quiz_id
         data["sub_category"] = item["sub_category"]
         data["text"] = item["text"]
         data["sub_text"] = item["sub_text"]
         data["choose"] = item["choose"]
         puts rate = rates[quiz_id]
         unless rate then
            data["rate"] = 0
         else
            data["rate"] = rate
         end
         printf("quiz_id=%d, rate=%d\n", quiz_id, data["rate"])
         @objlist << data
    }


    #問題をランダムにシャッフル
    @objlist.shuffle!
  end


  def answer
    _message = "とても残念だよ、君なら解けると思ったんだが・・・　不正解だ"
    _status = "incorrect"

    quiz_id = params[:quiz_id]
    answer = params[:answer]

    quiz = Quiz.find(quiz_id)

    result = Result.find_by_quiz_id(quiz_id)
    unless result then
        result = Result.new
        result.quiz_id = quiz_id
        result.correct = 0
        result.wrong = 0
    end

    if quiz.answer == answer.strip then
      _message = "よくできたね！正解だよ。"
      _status = "correct"
      result.correct += 1
    else
      result.wrong += 1
    end

    printf("user=[%s], answer=[%s]\n",quiz.answer, answer.strip)
    puts "correct:" + result.correct.to_s
    puts "wrong:" + result.wrong.to_s

    result.save

    render json: {status: _status, msg: _message}

  end
end
