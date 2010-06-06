class PagesController < ApplicationController
  require 'rubygems'
  require 'hpricot'
  require 'open-uri'
  
  def index
    
  end

  def about
  end
  def search_and_format
    logger.debug "This is search: #{params[:search]}"
    doc = open(params[:search]){ |f| Hpricot(f) }
    logger.debug "INFO: #{doc.search('//p')}"
    @tweet = doc.at('span.entry-content').inner_html
    #@full_user = doc.at('div.full-name').inner_html
    @user = doc.at("meta[@name='page-user-screen_name']")['content']
    @img = doc.at("div.thumb").inner_html
    @img['height="73"'] = 'height="53"'
    @img['width="73"'] = 'widht="53"'
    @timestamp = doc.at('span.published%20timestamp').inner_html
    respond_to do |format|
      format.js
    end
  end


end
