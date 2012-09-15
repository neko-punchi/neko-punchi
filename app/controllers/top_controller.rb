# -*- coding: utf-8 -*-
class TopController < ApplicationController
  # GET /top
  # GET /top.json
  def index
    #create quizzes
    @objlist = []
    30.times.each { |i|
      quiz = Quiz.new
      quiz.id = i + 1
      quiz.text = 'what\'s dmesg ?'
      quiz.choose = ['(1)aaa', '(2)bbbb', '(3)ccc']
      ##@objlist << quiz
    }
    
    quiz01 = Quiz.new
    quiz01.id = 1
    quiz01.text = '返事の「はい」は一回でいいと怒られたことがありますか。'
    quiz01.choose = "(1)yes,(2)no"
    quiz01.answer = '1'
    @objlist << quiz01
    
    quiz02 = Quiz.new
    quiz02.id = 2
    quiz02.text = 'ももいろクローバで一番歌がうまいやつの色を答えなさい。'
    quiz02.answer = 'green'
    @objlist << quiz02



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
    quiz_id = params[:id]
    amswer = params[:answer]
    puts quiz_id
    puts answer
    @quiz = Quiz.new
    status = 'success'
    render json: { status: status, data: @quiz}
  end

end
