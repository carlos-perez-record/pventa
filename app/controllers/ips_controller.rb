class IpsController < ApplicationController

  def index
    @i = Ip.all
  end

  def new
    @i = Ip.new
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
    redirect_to ips_path, alert: "La IP fue eliminada"
  end

  private
    def ip_params
      params.require(:ip).permit(:ip, :use_id)
    end

end
