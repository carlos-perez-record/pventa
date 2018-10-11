class CentersController < ApplicationController

  def index
    @c = Center.all
  end

  def new
    @c = Center.new
  end

  def create
    @c = Center.new(center_params)
    if @c.save
      redirect_to centers_path, notice: "Se agrego un nuevo centro de costos"
    else
      render :new
    end
  end

  def edit
    @c = Center.find(params[:id])
  end

  def update
    @c = Center.find(params[:id])
    if @c.update(centers_params)
      redirect_to centers_path, notice: "Este centro de Costos ha sido actualizado"
    else
      render :edit
    end
  end

  def destroy
    center = Center.find(params[:id])
    center.destroy
    redirect_to center_path, notice: "El Centro de Costos fue eliminado, y todos los registros de puntos de venta que lo contenian"
  end

private
  def center_params
    params.require(:center).permit(:nombre, :zone_id)
  end
end
