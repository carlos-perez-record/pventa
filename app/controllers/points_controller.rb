class PointsController < ApplicationController
  def index
      @p = Point.all
      respond_to do |format|
        format.html
        format.json
        format.pdf {render template: 'points/reporte', pdf: 'Reporte'}
      end
  end

  def new
    @p = Point.new
  end

  def create
    @p = Point.new(point_params)
    if @p.save
      redirect_to points_path, notice: "El Punto de Venta fue publicado con éxito"
    else
      render :new
    end
  end

private
  def point_params
    params.require(:point).permit(:codigo, :nombre, :direccion, :telefono, :picture)
  end

end
