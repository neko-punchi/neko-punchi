# -*- coding: utf-8 -*-
class ExamsController < ApplicationController
  # GET /exams
  # GET /exams.json
  def index
    #create quizzes
    @objlist = []

    @quizzes = Quiz.all
    i = 0
    @quizzes.each{ |q|
      quiz = Quiz.new
      quiz.id = i
      quiz.text = q.text
      quiz.choose = q.choose
      quiz.answer = q.answer
      @objlist << quiz
      i += 1
    }
    30.times.each { |i|
      quiz = Quiz.new
      quiz.id = i + 31
      quiz.text = 'what\'s dmesg ?'
      quiz.choose = "(1)aaa, (2)bbbb, (3)ccc"
      @objlist << quiz
    }

    #status = 'success'
    #render json: { status: status, data: @quiz}
  end

  def show
    quiz_id = params[:id]
    @quiz = Quiz.new
    @quiz.id = 99
    @quiz.text = 'which is text editor?'
    @quiz.choose = ['vi', 'cat', 'more', 'less']
    
    num = 1

    render json: {number: num, quiz: @quiz}
    
  end

  def answer
    puts "answer in"
    p quiz_id = params[:quiz_id]
    p answer = params[:answer]
    status = 'success'
    render text: "よくできたね！正解だよ。"
    ##render :action => "index"
    
    ##render json: {number: num, quiz: @quiz}
    #redirect_to "/exams"
  end
end
