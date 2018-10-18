class ActivatesController < ApplicationController

  def index
    @a = Activate.all
  end

  def new
    @a = Activate.new
  end

  def create
    @a = Activate.new(activate_params)
    if @a.save
      redirect_to activates_path, notice: "Se asigno un nuevo activo fijo"
    else
      render :new
    end
  end

  def show
    @a = Activate.find(params[:id])
  end

  def edit
    @a = Activate.find(params[:id])
  end

  def update
    @a = Activate.find(params[:id])
    if @a.update(activate_params)
      redirect_to activates_path, notice: "La asignacion de este activo fijo ha sido actualizado"
    else
      render :edit
    end
  end

  def destroy
    activate = Activate.find(params[:id])
    activate.destroy
    redirect_to activate_path, alert: "El activo fijo fue eliminado"
  end

private
  def activate_params
    params.require(:active).permit(:ip, :serial, :placa, :devices_id)
end
