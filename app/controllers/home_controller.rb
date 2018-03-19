class HomeController < ApplicationController
  def index
  end

  def charts
    @urlparam = request.original_url.split('?').first
    
  end
  
  def weekcharts
  end
  
  def monthcharts
  end

  def tables
  end
  
  def c1charts
  end
  
  def giftcharts
  end
  
  def goldcharts
  end
  
  def foreignprice
    
  end
end