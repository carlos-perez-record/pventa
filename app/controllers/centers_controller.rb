class CentersController < ApplicationController

  def index
    @c = Center.all
  end

  def new
    @c = Center.new
    @c.zone_id = params[:zone_id]
    @visibilidad = params[:visible]
  end

  def create
    @c = Center.new(center_params)
    session[:return_to] ||= request.referer
    if @c.save
      redirect_to session.delete(:return_to), notice: "Se agrego el nuevo centro de costos '#{@c.nombre}'"
    end
  end

  def edit
    @c = Center.find(params[:id])
  end

  def update
    @c = Center.find(params[:id])
    #En su acción de edición, guardar la URL solicitante en el hash sesión, que está disponible en varias solicitudes:
    session[:return_to] ||= request.referer
    if @c.update(center_params)
      #edireccionan a él en su acción de actualización, después de una exitosa Guardar:
      redirect_to session.delete(:return_to), notice: "El centro de costos '#{@c.nombre}' ha sido actualizado"
    else
      render :edit
    end
  end

  def destroy
    center = Center.find(params[:id])
    center.destroy
    #En su acción de edición, guardar la URL solicitante en el hash sesión, que está disponible en varias solicitudes:
    session[:return_to] ||= request.referer
    #edireccionan a él en su acción de actualización, después de una exitosa Guardar:
    redirect_to session.delete(:return_to), alert: "El Centro de Costos fue eliminado, y todos los registros de puntos de venta que lo contenian"
  end

private
  def center_params
    params.require(:center).permit(:nombre, :zone_id)
  end
end
