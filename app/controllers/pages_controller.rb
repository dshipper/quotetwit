class PagesController < ApplicationController
  require 'rubygems'
  require 'hpricot'
  require 'open-uri'
  
  def index
    
  end

  def about
  end
  def search_and_format
    doc = Hpricot(open(params[:search]))
    @tweet = doc.at('span.entry-content').inner_html
    #@full_user = doc.at('div.full-name').inner_html
    @user = doc.at("meta[@name='page-user-screen_name']")['content']
    @img = doc.at("div.thumb").inner_html
    @img['height="73"'] = 'height="53"'
    @img['width="73"'] = 'widht="53"'
    @timestamp = doc.at('span.published%20timestamp').inner_html
    render_text "<div style='color:#333333;
    font:'Lucida Grande',sans-serif; position: relative;'>
    <div style='float: left;'>#{@img}</div>
    <div style='position: relative; left: 5px;'>
    <div style='font: 16px Helvetica; color: black;'>
    <a href='http://www.twitter.com/#{@user}'>#{@user}</a>: #{@tweet}<br>
    </div>
    <div class='timestamp' style='font-size: 12px;'>about #{@timestamp}</div>
    </div>
    </div>"
     
    
  end


end
