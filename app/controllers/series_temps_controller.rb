class SeriesTempsController < ApplicationController
  before_action :set_series_temp, only: [:show, :edit, :update, :destroy]

  # GET /series_temps
  # GET /series_temps.json
  def index
      @q = SeriesTemp.ransack(params[:q])
      @series_temps = @q.result(distinct: true).paginate(:page => params[:page], :per_page => 5).order(name: :asc)    
  end

  def buscador
     
      respond_to do |f|
        f.js
      end  
  end

  # GET /series_temps/1
  # GET /series_temps/1.json
  def show
   @capitulos = @series_temp.seasons.paginate(:page => params[:page], :per_page => 1).order(orden: :asc)
  end
  


  # GET /series_temps/new
  def new
    @series_temp = SeriesTemp.new
  end

  # GET /series_temps/1/edit
  def edit
  end

  # POST /series_temps
  # POST /series_temps.json
  def create
    @series_temp = SeriesTemp.new(series_temp_params)

    respond_to do |format|
      if @series_temp.save
        format.html { redirect_to edit_series_temp_url(@series_temp), notice: 'Series temp was successfully created.' }
        format.json { render :show, status: :created, location: @series_temp }
      else
        format.html { render :new }
        format.json { render json: @series_temp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /series_temps/1
  # PATCH/PUT /series_temps/1.json
  def update
    respond_to do |format|
      if @series_temp.update(series_temp_params)
        format.html { redirect_to edit_series_temp_url(@series_temp), notice: 'Series temp was successfully updated.' }
        format.json { render :show, status: :ok, location: @series_temp }
      else
        format.html { render :edit }
        format.json { render json: @series_temp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /series_temps/1
  # DELETE /series_temps/1.json
  def destroy
    @series_temp.destroy
    respond_to do |format|
      format.html { redirect_to series_temps_url, notice: 'Series temp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_series_temp
      @series_temp = SeriesTemp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def series_temp_params
      params.require(:series_temp).permit(:name, :link, :video, :tag, :description, :year, :director, :duration, :country,  :baner,:imagen, 
        seasons_attributes: [:id, :name, :link, :video, :tag, :description, :year, :imagen, :orden ,:_destroy , 
        chapters_attributes: [:id, :name,  :link, :description, :duration, :orden, :_destroy] ])
    end
end
