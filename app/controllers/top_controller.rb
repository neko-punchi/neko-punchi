# -*- coding: utf-8 -*-
require "open-uri"
class TopController < ApplicationController
=begin
	@relations = Relation.all


	respond_to do |format|
      format.html
      format.json { render json: @relations }
    end
=end
  def index
     readWiki
  end

#read local news text with wiki format
  def readWiki
    file = File.expand_path('public/robots.txt', ENV['RAILS_ROOT'])
    puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    puts "[#{file}]"
    puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    f = open(file)
    f.each_line{ |line|
      puts line
    }
  end

end
