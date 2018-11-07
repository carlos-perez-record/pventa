class TechnologiesController < ApplicationController

  def index
    @t = Technology.all
  end

  def new
    @t = Technology.new
  end

  def create
    @t = Technology.new(technology_params)
    if @t.save
      redirect_to technologies_path, notice: "Se agrego una nueva tecnologia de comunicaciones"
    end
  end

  def edit
    @t = Technology.find(params[:id])
  end

  def update
    @t = Technology.find(params[:id])
    if @t.update(technology_params)
      redirect_to technologies_path, notice: "Esta Tecnologia ha sido actualizada"
    else
      render :edit
    end
  end

  def destroy
    technology = Technology.find(params[:id])
    technology.destroy
    redirect_to technologies_path, alert: "La tecnologia fue eliminada, y todos los registros de puntos de venta que la contenian"
  end

  private
    def technology_params
      params.require(:technology).permit(:descripcion)
    end

end
