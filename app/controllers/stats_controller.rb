class StatsController < ApplicationController
  def your_records
  	
  	@your_answer_rates = [
      ["0",100],
      ["1",90],
  		["2",80],
  		["3",70],
  		["4",60],
  		["5",50],
  		["6",40],
  		["7",30],
  		["8",20],
  		["9",10],
      ["10",0]
  	]

  	respond_to do |format|
  		format.html
  		#format.json{render json: @your_answer_rates}
  	end
  end

  def statistics
  end

end
