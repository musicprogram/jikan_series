class BuscadorController < ApplicationController
  def index
  	@q = SeriesTemp.ransack(params[:q])
    @series_temps = @q.result(distinct: true).paginate(:page => params[:page], :per_page => 5).order(name: :asc) 
  	 respond_to do |f|
        f.js
      end  
  end
end
