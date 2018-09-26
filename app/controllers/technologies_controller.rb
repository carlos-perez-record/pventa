class TechnologiesController < ApplicationController
  def new
    @t = Technology.new
  end

  def create
    @t = Technology.new(technology_params)
    if @t.save
      redirect_to points_path, notice: "Se agrego una nueva tecnologia de comunicaciones"
    else
      render :new
    end
  end

  def edit
    @t = Technology.find(params[:id])
  end

  def update
    @t = Technology.find(params[:id])
    if @t.update(technology_params)
      redirect_to points_path, notice: "Esta Tecnologia ha sido actualizada"
    else
      render :edit
    end
  end

  def destroy
    technology = Technology.find(params[:id])
    technology.destroy
    redirect_to point_path, notice: "La marca fue eliminada"
  end

  private
    def technology_params
      params.require(:technology).permit(:descripcion)
    end

end
