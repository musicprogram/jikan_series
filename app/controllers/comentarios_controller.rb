class ComentariosController < ApplicationController
	 def create
    @series_temp = SeriesTemp.find(params[:series_temp_id])
    @comentario = @series_temp.comentarios.create(comentario_params)
    redirect_to series_temp_path(@series_temp)
  end


  def destroy
    @series_temp = SeriesTemp.find(params[:series_temp_id])
    @comentario = @series_temp.comentarios.find(params[:id])
    @comentario.destroy
    redirect_to series_temp_path(@series_temp)
  end



 
  private
    def comentario_params
      params.require(:comentario).permit(:user, :description, :series_temp_id	)
    end
end
