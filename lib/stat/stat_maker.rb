require "pp"
class Stat::StatMaker
  def initialize
  #  p "StatMaker.initialize"
    @all_personal_results = PersonalResult.find(:all)
    @all_users = User.find(:all)
  #  pp @all_personal_results
  #  pp @all_users
  end

  def get_ranking
    
    # p "method [Stat::Ranking.ranking]" # test message
    all_correct_sum_results = get_stat_of_correct_count    
    # ソート
    ranking = all_correct_sum_results.sort_by{ |val| [-val[:correct_sum],val[:wrong_sum]]}
    # ランキング番号付与（バグあり。同率の回答者でもランキングに差がつく）
    rank = 1
    ranking.each do |line|
      line[:ranking] = rank
      rank = rank + 1
    end

    return ranking
  
  end



  def get_stat_of_correct_count
    stat_records = []
    # user_results_record = nil

    @all_users.each do |user|
 
      user_results_record = 
      {:provider => user[:provider],
       :uid => user[:uid],
       :name => user[:name],
       :nickname => user[:nickname],
       :correct_sum => 0,
       :wrong_sum => 0 }
      
      @all_personal_results.each do |ps|
        if ps[:uid] == user[:uid] && ps[:provider] == user[:provider] then
          user_results_record[:correct_sum] += ps[:correct]
          user_results_record[:wrong_sum] += ps[:wrong]
        end
      end
      if (user_results_record[:correct_sum]+user_results_record[:wrong_sum]) != 0 then
        user_results_record[:rate] = user_results_record[:correct_sum]*100/(user_results_record[:correct_sum]+user_results_record[:wrong_sum])
      else
        user_results_record[:rate] = 0
      end
 
      stat_records << user_results_record
      # user_results_record = nil
 
    end

    return stat_records

  end
end