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
    ans_rate_buff = nil

    sub_categories.each do |sc|
      ans_rate_buff = Hash.new
      ans_rate_buff[:category] = get_category_name(categories,sc.category_id)
      ans_rate_buff[:sub_category] = get_sub_category_name(sub_categories,sc.id)

      buff = PersonalResult.find_by_provider_and_uid_and_sub_category_id(current_user.provider,current_user.uid,sc.id)
      
      if  buff == nil then
        ans_rate_buff[:correct_sum] = 0
        ans_rate_buff[:try_total] = 0
        ans_rate_buff[:rate] = 0 
      else
        ans_rate_buff[:correct_sum] = buff[:correct]
        ans_rate_buff[:try_total] = buff[:correct] + buff[:wrong]
        ans_rate_buff[:rate] = ( buff[:correct] * 100 )/( buff[:correct] + buff[:wrong] ) 
      end

      @your_answer_rates<<ans_rate_buff  
    
      #ループ内で使用する作業領域の初期化
      buff = nil
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

 
  def ranking

=begin
    
    p "method [ranking]" # test message

    @all_personal_results = PersonalResult.find(:all)
    @all_users = User.find(:all)
    pp @all_personal_results
    pp @all_users
  
    all_correct_sum_results = get_stat_of_correct_count
    @ranking = all_correct_sum_results.sort_by{ |val| [-val[:correct_sum],val[:wrong_sum]]}
    
    # ランキング番号付与（バグあり。同率の回答者でもランキングに差がつく）
    rank = 1
    @ranking.each do |line|
      line[:ranking] = rank
      rank = rank + 1
    end
=end
    stat_maker = Stat::StatMaker.new
    @ranking = stat_maker.get_ranking

  end


=begin

  def get_stat_of_correct_count
    stat_records = []
    user_results_record = nil

    @all_users.each do |user|
 
      user_results_record = 
      {:provider => user[:provider],
       :uid => user[:uid],
       :name => user[:name],
       :correct_sum => 0,
       :wrong_sum => 0 }
      
      @all_personal_results.each do |ps|
        if ps[:uid] == user[:uid] && ps[:provider] == user[:provider] then
          user_results_record[:correct_sum] += ps[:correct]
          user_results_record[:wrong_sum] += ps[:wrong]
        end
      end
      user_results_record[:rate] = user_results_record[:correct_sum]*100/(user_results_record[:correct_sum]+user_results_record[:wrong_sum])
 
      stat_records << user_results_record
      user_results_record = nil
 
    end

    return stat_records

  end
=end

end