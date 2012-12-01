# -*- coding: utf-8 -*-
class TopController < ApplicationController
  def index
     @news_html = readWiki()
  end

#read local news text with wiki format
  def readWiki
    file = File.expand_path('public/news/news.wiki', ENV['RAILS_ROOT'])

    f = open(file)
    wiki = f.read
    f.close
    html = Redcarpet::Render::HTML.new(:hard_wrap => true )

    return Redcarpet::Markdown.new(html,:autolink => true).render(wiki)
  end

end
