class HomeController < ApplicationController
  def index
    @title = "황금알M"
    # puts session[:grade].inspect
    
    # if @current == false
    #   redirect_to '/users/sign_in'
    # end
    redirect_to '/home/bye'
  end

  def charts
    @title = "일반차트"
    @urlparam = request.query_parameters['name']
    redirect_to '/home/bye'
  end
  
  def weekcharts
    @title = "골드차트"
    @urlparam = request.query_parameters['name']
    redirect_to '/home/bye'
  end
  
  def monthcharts
    @title = "일반차트"
    @urlparam = request.query_parameters['name']
    redirect_to '/home/bye'
  end

  def tables
    @title = "종목분석"
    redirect_to '/home/bye'
  end
  
  def c1charts
    @title = "골드차트"
    @urlparam = request.query_parameters['name']
    redirect_to '/home/bye'
  end
  
  def giftcharts
    @title = "골드차트"
    @urlparam = request.query_parameters['name']
    redirect_to '/home/bye'
  end
  
  def gold_daycharts
    @title = "골드차트"
    @urlparam = request.query_parameters['name']
    redirect_to '/home/bye'

  end
  
  def gold_weekcharts
    @title = "골드차트"
    @urlparam = request.query_parameters['name']
    redirect_to '/home/bye'
  end

  def gold_monthcharts
    @title = "골드차트"
    @urlparam = request.query_parameters['name']
    redirect_to '/home/bye'
  end
  
  def foreignprice
    @title = "주요지수"
    redirect_to '/home/bye'
  end
  
  def theme
    @title = "테마주"
    redirect_to '/home/bye'
  end
  
  def themeStock
    @title = "테마주"
    @urlparam = request.query_parameters['theme']
    redirect_to '/home/bye'
  end
  
  def pro
    @title = "종목포착"
    redirect_to '/home/bye'
  end
  
  def proStock
    @title = "종목포착"
    redirect_to '/home/bye'
  end
  
  def payment
    @title = "결제"
    redirect_to '/home/bye'
  end
  
  def bye
  
  end
end