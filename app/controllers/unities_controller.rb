class UnitiesController < ApplicationController

  def index
    @u = Unity.all
  end

  def new
    @u = Unity.new
  end

  def create
    @u = Unity.new(unity_params)
    if @u.save
      redirect_to unities_path, notice: "Se agrego una nueva unidad de medida"
    end
  end

  def edit
    @u = Unity.find(params[:id])
  end

  def update
    @u = Unity.find(params[:id])
    if @u.update(unity_params)
      redirect_to unities_path, notice: "La unidad de medida ha sido actualizada"
    else
      render :edit
    end
  end

  def destroy
    unity = Unity.find(params[:id])
    unity.destroy
    redirect_to unities_path, alert: "La unidad de medida fue eliminada"
  end

  private
    def unity_params
      params.require(:unity).permit(:unidad, :sigla)
    end
end
