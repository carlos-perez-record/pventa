class PointsController < ApplicationController

  before_action :private_access, except: [:index, :show]

  def index
      @p = Point.all
      #Instrucciones para utilizar y darle formato a los reportes generados.
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

  def show
    @p = Point.find(params[:id])
    respond_to do |format|
      format.html
      format.json
      format.pdf {render template: 'points/Rep_punto', pdf: 'Rep_punto'}
    end
  end

  def edit
    @p = Point.find(params[:id])
  end

  def update
    @p = Point.find(params[:id])
    if @p.update(point_params)
      redirect_to point_path, notice: "La informacion del punto de venta ha sido actualizada"
    else
      render :edit
    end
  end

  def destroy
    point = Point.find(params[:id])
    point.destroy
    redirect_to points_path, alert: "El producto fue eliminado con éxito"
  end

private
  def point_params
    params.require(:point).permit(:codigo, :nombre, :direccion, :telefono, :picture, :technology_id, :center_id, :serial, :celda)
  end



end
