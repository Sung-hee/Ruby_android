class HomeController < ApplicationController
  def index
  end

  def charts
    @urlparam = request.query_parameters['name']
    
    puts @urlparam
  end
  
  def weekcharts
    @urlparam = request.query_parameters['name']
    
    puts @urlparam
  end
  
  def monthcharts
    @urlparam = request.query_parameters['name']
    
    puts @urlparam
  end

  def tables
  end
  
  def c1charts
  end
  
  def giftcharts
  end
  
  def goldcharts
    @urlparam = request.query_parameters['name']
    
    puts @urlparam
  end
  
  def foreignprice
    
  end
end