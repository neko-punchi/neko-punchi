class ExamsController < ApplicationController
  # GET /exams
  # GET /exams.json
  def index
    quiz_id = params[:id]
    @quiz = Quiz.new
    @quiz.text = 'what\'s dmesg ?'
    @quiz.choose = ['(1)aaa', '(2)bbbb', '(3)ccc']
    

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
    quiz_id = params[:id]
    amswer = params[:answer]
    @quiz = Quiz.new
    @quiz.id = 98
    @quiz.text = 'wow'
    @quiz.choose = ['(1)aaa', '(2)bbbb', '(3)ccc']
    num = 1
    render json: {number: num, quiz: @quiz}
  end

end
