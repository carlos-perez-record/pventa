class DevicesController < ApplicationController

  def index
    @d = Device.all
  end

  def new
    @d = Device.new
  end

  def create
    @d = Device.new(device_params)
    if @d.save
      redirect_to devices_path, notice: "Se agregó un nuevo dispositivo"
    end
  end

  def show
    @d = Device.find(params[:id])
  end

  def edit
    @d = Device.find(params[:id])
  end

  def update
    @d = Device.find(params[:id])
    if @d.update(device_params)
      redirect_to devices_path, notice: "Este dispositivo ha sido actualizado"
    else
      render :edit
    end
  end

  def destroy
    device = Device.find(params[:id])
    device.destroy
    redirect_to devices_path, alert: "El dispositivo fue eliminado"
  end

  private
    def device_params
      params.require(:device).permit(:nombre, :tipo)
    end


end
