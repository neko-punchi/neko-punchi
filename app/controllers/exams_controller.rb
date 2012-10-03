# -*- coding: utf-8 -*-
class ExamsController < ApplicationController
  # GET /exams
  # GET /exams.json
  def index
   
    #objlistには問題を詰め込む（DBから取得した値で）
    @objlist = Quiz.all

    #選択問題サンプル
    30.times.each { |i|
      quiz = Quiz.new
      quiz.id = i + 31
      quiz.text = 'what\'s dmesg ?'
      quiz.choose = "(1)aaa, (2)bbbb, (3)ccc"
      @objlist << quiz
    }

    #入力問題サンプル
    10.times.each { |i|
      quiz = Quiz.new
      quiz.id = i + 61
      quiz.text = 'ファイルの末尾数行を表示するコマンドを答えなさい！'
      
      @objlist << quiz
    }
    #status = 'success'
    #render json: { status: status, data: @quiz}
  end


  def answer
    quiz_id = params[:quiz_id]
    answer = params[:answer]
    
    message = "とても残念だよ、君なら解けると思ったんだが・・・　不正解だ"
    status = "incorrect"
    if answer == '(1)aaa' then
      message = "よくできたね！正解だよ。"
      status = "correct"
    end
    #render text: message
    
    render json: {status: status, msg: message}
    #redirect_to "/exams"
  end
end
