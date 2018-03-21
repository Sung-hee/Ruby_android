class HomeController < ApplicationController
  def index
  end

  def charts
    @urlparam = request.query_parameters['name']

  end
  
  def weekcharts
    @urlparam = request.query_parameters['name']
  end
  
  def monthcharts
    @urlparam = request.query_parameters['name']
  end

  def tables
  end
  
  def c1charts
    @urlparam = request.query_parameters['name']
  end
  
  def giftcharts
    @urlparam = request.query_parameters['name']
  end
  
  def gold_daycharts
    @urlparam = request.query_parameters['name']

  end
  
  def gold_weekcharts
    @urlparam = request.query_parameters['name']

  end

  def gold_monthcharts
    @urlparam = request.query_parameters['name']

  end
  
  def foreignprice
  end
  
  def theme
  end
end