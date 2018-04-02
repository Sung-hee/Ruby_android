class UsersController < ApplicationController
  require 'httparty'
  require 'json'
  require 'nokogiri'
  
  def sign_in
    puts "asd"
    url = "http://61.72.187.6/phps/login?id=#{params[:id]}&pwd=#{params[:pwd]}"
    response = HTTParty.get(url)
    hash = JSON.parse(response.body)
    
    result = hash[0]["result"]
    
    if result
      redirect_to '/home/index'
    end
  end
  
  def sign_up
    reset_session
    puts "ttt"
    url = "http://61.72.187.6/phps/join.php?nickname=#{:nickname}&nick_pass=#{:nick_pass}&id=#{params[:id]}&pwd=#{params[:pwd]}&pwd_confirmation=#{params[:pwd_confirmation]}&phone=#{params[:phone]}&email=#{params[:email]}"
    response = HTTParty.get(url)
    hash = JSON.parse(response.body)
    
    result = hash[0]["result"]
    @error = hash[0]["error"]
    
    puts params[:phone]
    puts result 
    puts @error
    puts session[:phone]
    
    if result
      redirect_to '/home/index'
    end    
  end
end
