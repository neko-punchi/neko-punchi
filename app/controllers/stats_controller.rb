class StatsController < ApplicationController
  def your_records
  	
  	@your_answer_rates = PersonalResult.find_all_by_provider_and_uid(current_user.provider,current_user.uid)

    @objlist = []
    @your_answer_rates.each do |line|
      @objlist<<[line.category,line.sub_category,sprintf("%3d",line.correct/(line.correct + line.wrong))]
    end
    pp @objlist


   
   #  @your_answer_rates = [
   #    ["0",100],
   #    ["1",90],
  	# 	["2",80],
  	# 	["3",70],
  	# 	["4",60],
  	# 	["5",50],
  	# 	["6",40],
  	# 	["7",30],
  	# 	["8",20],
  	# 	["9",10],
   #    ["10",0]
  	# ]
   
  	respond_to do |format|
  		format.html
  		#format.json{render json: }
  	end
  end

  def statistics
  end

end
