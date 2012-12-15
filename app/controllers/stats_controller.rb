class StatsController < ApplicationController
  require "pp"
  def your_records
  	
    categories = Category.find(:all,:order => "id ASC")
    sub_categories = SubCategory.find(:all,:order=>"id ASC")
    #pp categories
    #pp sub_categories

    @your_answer_rates = []

    #ループ内で使用する作業領域の初期化
    buff = nil
    correct_sub = 0
    wrong_sub = 0
    ans_rate_buff = nil

    sub_categories.each do |sc|
      #p '#############'
      #pp buff
      ans_rate_buff = Hash.new
      ans_rate_buff[:category] = get_category_name(categories,sc.category_id)
      ans_rate_buff[:sub_category] = get_sub_category_name(sub_categories,sc.id)

      buff = PersonalResult.find_by_provider_and_uid_and_sub_category_id(current_user.provider,current_user.uid,sc.id)
      
      if  buff == nil then
        ans_rate_buff[:correct_sub] = 0
        ans_rate_buff[:try_total] = 0
        ans_rate_buff[:rate] = 0 
      else
        ans_rate_buff[:correct_sub] = buff[:correct]
        ans_rate_buff[:try_total] = buff[:correct] + buff[:wrong]
        ans_rate_buff[:rate] = ( buff[:correct] * 100 )/( buff[:correct] + buff[:wrong] ) 
      end

      @your_answer_rates<<ans_rate_buff  
    
      #ループ内で使用する作業領域の初期化
      buff = nil
      correct_sub = 0
      wrong_sub = 0
      ans_rate_buff = nil

    end
   
    pp @your_answer_rates #test
   
  	respond_to do |format|
  		format.html
  	end
  end


  private
  def get_category_name(category_db,category_id)
    category_db.each do |line|
      if line[:id] == category_id then
        return line[:category]
      end
    end

    # if not found any name ...
    p "warning! category_name is nil."
    return nil
  end

  def get_sub_category_name(sub_category_db,category_id)
    sub_category_db.each do |line|
      if line[:id] == category_id then
        return line[:sub_category]
      end
    end
    # if not found any name ...
    p "warning! sub_category_name is nil."
    return nil
  end


  public

  def statistics
  end

end