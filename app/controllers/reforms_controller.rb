class ReformsController < ApplicationController

  def index
    @r = Reform.all
  end

  def new
    # Se crea una variable de instancia @r la cual recibe la instancia del modelo Reform
    @r = Reform.new
    # Sobre la variable de instancia @r se reescribe en el campo point_id y se reemplaza su valor por el que arrastra la llave :point_id del hash params
    @r.point_id = params[:point_id]
    # Aprovechando el hash params al momento de invocarse el metodo new se crea y envia una llave boolena llamada :visible, la cual arrastra true o false dependiendo si se conoce o no el punto de venta al que le corresponde la nueva reforma
    @visibilidad = params[:visible]
  end

  def create
    @r = Reform.new(reform_params)
    session[:return_to] ||= request.referer
    if @r.save
      redirect_to session.delete(:return_to), notice: "Se agrego la reforma con fecha: '#{@r.fecha}'"
    end
  end

  def show
    @r = Reform.find(params[:id])

  end

  def edit
    @r = Reform.find(params[:id])
  end

  def update
    @r = Reform.find(params[:id])
    if @r.update(reform_params)
      session[:return_to] ||= request.referer
      redirect_to session.delete(:return_to), notice: "Esta Reforma ha sido actualizada"
    else
      render :edit
    end
  end

  def destroy
    reform = Reform.find(params[:id])
    reform.destroy
    session[:return_to] ||= request.referer
    redirect_to session.delete(:return_to), alert: "La reforma fue eliminada"
  end

  private
    def reform_params
      params.require(:reform).permit(:fecha, :proyecto, :obra, :modification_id, :point_id)
    end
end
