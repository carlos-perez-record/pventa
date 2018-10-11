class ZonesController < ApplicationController

  def index
    @z = Zone.all
  end

  def new
    @z = Zone.new
  end

  def create
    @z = Zone.new(zone_params)
    if @z.save
      redirect_to zones_path, notice: "Se agrego una nueva Zona"
    else
      render :new
    end
  end

  def show
    @z = Zone.find(params[:id])
  end

  def edit
    @z = Zone.find(params[:id])
  end

  def update
    @z = Zone.find(params[:id])
    if @z.update(zone_params)
      redirect_to zones_path, notice: "Esta zona ha sido actualizada"
    else
      render :edit
    end
  end

  def destroy
    zone = Zone.find(params[:id])
    zone.destroy
    redirect_to zone_path, notice: "La zona fue eliminada con todos sus centros de costos y puntos de ventas"
  end

private
  def zone_params
    params.require(:zone).permit(:nombre)
  end
end
