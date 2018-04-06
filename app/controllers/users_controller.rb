class UsersController < ApplicationController
  require 'httparty'
  require 'json'
  require 'nokogiri'
  
  def sign_in
    @title = "로그인"
    if session[:grade].nil?
      url = "http://13.125.147.26/phps/login?id=#{params[:id]}&pwd=#{params[:pwd]}&hp=#{params[:hp]}"
      encode = URI.encode(url)
      # url = "https://charttest-sungheeek.c9users.io/truefalse.json"
      response = HTTParty.get(encode)
      hash = JSON.parse(response.body)
      
      result = hash[0]["result"]
      error = hash[0]["error"]
      grade = hash[0]["grade"]
      
      session[:grade] = grade
      session[:error] = error
      @session_grade = session[:grade]
      session[:id] = params[:id]
      session[:pwd] = params[:pwd]
      
      puts session[:id].inspect
      puts session[:pwd].inspect
      
      
      puts @session_grade.inspect
      
      if result
        redirect_to '/home/index'
        
      elsif session[:id] && session[:pwd]
        redirect_to '/home/index'
      end
    else
      redirect_to '/home/index'
    end
  end
  
  def sign_up
    @title = "회원가입"
    
    if session[:grade].nil?
      url = "http://13.125.147.26/phps/join?id=#{params[:id]}&pwd=#{params[:pwd]}&pwd_confirmation=#{params[:pwd_confirmation]}&phone=#{params[:phone]}&email=#{params[:email]}&hp=#{params[:hp]}"
      encode = URI.encode(url)
      response = HTTParty.get(encode)
      hash = JSON.parse(response.body)
      
      result = hash[0]["result"]
      @error = hash[0]["error"]
      @grade = hash[0]["grade"]
      
      puts @error
      
      # 세션 저장하기
      session[:grade] = @grade
      session[:error] = @error
      
      @session_grade = session[:grade]
      
      puts @session_grade.inspect
      
      if result
        redirect_to '/home/index'
      end    
    end
    
    def sign_out
      reset_session
      
      redirect_to '/users/sign_in'
    end
  else
    redirect_to '/home/index'
  end
end
