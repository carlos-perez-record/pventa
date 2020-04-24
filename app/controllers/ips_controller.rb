class IpsController < ApplicationController

  def index
    @i = Ip.all
  end

  def new
    # Se crea una variable de instancia @i la cual recibe la instancia del modelo Ip
    @i = Ip.new
    # Sobre la variable de instancia @i se reescribe en el campo point_id y se reemplaza su valor por el que arrastra la llave :point_id del hash params
    @i.point_id = params[:point_id]
    # Aprovechando el hash params al momento de invocarse el metodo new se crea y envia una llave boolena llamada :visible, la cual arrastra true o false dependiendo si se conoce o no el punto de venta al que le corresponde la nueva reforma
    @visibilidadip = params[:visible]

  end

  def create
    @i = Ip.new(ip_params)
    if @i.save
      redirect_to ips_path, notice: "Se agregó una nueva ip"
    end
  end

  def show
    @i = ip.find(params[:id])
  end

  def edit
    @i = Ip.find(params[:id])
  end

  def update
    @i = Ip.find(params[:id])
    if @i.update(ip_params)
      redirect_to ips_path, notice: "Esta IP ha sido actualizada"
    else
      render :edit
    end
  end

  def destroy
    ip = Ip.find(params[:id])
    ip.destroy
    # Retorna al ultimo punto en el cual se habia estado
    session[:return_to] ||= request.referer
    redirect_to session.delete(:return_to), alert: "La IP fue eliminada"
  end

  private
    def ip_params
      params.require(:ip).permit(:ip, :point_id,  :device_id, :use_id)
    end

end
