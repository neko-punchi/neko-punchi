class StatsController < ApplicationController
  require "pp"
  def your_records
  	
    @category = Category.find(:all,:order => "id ASC")
    @sub_category = SubCategory.find(:all,:order=>"id ASC")
    pp @category
    pp @sub_category

    @your_answer_rates = []

    #
    buff = nil
    correct_sub = 0
    wrong_sub = 0

    @sub_category.each do |sc|
      buff = PersonalResult.find_all_by_sub_category_id(sc.id)
      if  buff == [] then
        @your_answer_rates<<{
          :category => @category[sc.category_id - 1][:category],
          :sub_category => @sub_category[sc.id - 1][:sub_category],
          :correct_sub => 0,
          :try_total => 0,
          :rate => 0 
        }
      else
        buff.each do |pr|
          correct_sub += pr.correct
          wrong_sub += pr.wrong
        end
        @your_answer_rates<<{
          :category => @category[sc.category_id - 1][:category],
          :sub_category => @sub_category[sc.id - 1][:sub_category],
          :correct_sub => correct_sub,
          :try_total => correct_sub + wrong_sub,
          :rate => (correct_sub*100)/(correct_sub + wrong_sub) 
        }
      end

    buff = nil
    correct_sub = 0
    wrong_sub = 0

    end
   
    pp @your_answer_rates #test
   
  	respond_to do |format|
  		format.html
  	end
  end

  def statistics
  end

end
