class ActivesController < ApplicationController

  def index
    @a = Active.all
  end

  def new
    @a = Active.new
  end

  def create
    @a = Active.new(active_params)
    if @a.save
      redirect_to actives_path, notice: "Se agrego un nuevo activo fijo"
    else
      puts "No se pudo guardar"
    end
  end

  def edit
    @a = Active.find(params[:id])
  end

  def update
    @a = Active.find(params[:id])
    if @a.update(active_params)
      redirect_to actives_path, notice: "Este activo fijo ha sido actualizado"
    else
      render :edit
    end
  end

  def destroy
    active = Active.find(params[:id])
    active.destroy
    redirect_to actives_path, alert: "El activo fijo ha sido eliminado"
  end

private

  def active_params
    params.require(:active).permit(:serial, :placa, :devices_id)
  end

end
