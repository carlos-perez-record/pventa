class ModificationsController < ApplicationController

  def index
    @m = Modification.all
  end

  def new
    @m = Modification.new
  end

  def create
    @m = Modification.new(modification_params)
    if @m.save
      redirect_to modfications_path, notice: "Se agrego un nuevo Tipo de Reforma o modificación"
    end
  end

  def show
    @m = Modification.find(params[:id])
  end

  def edit
    @m = Modification.find(params[:id])
  end

  def update
    @m = Modification.find(params[:id])
    if @m.update(modification_params)
      redirect_to modifications_path, notice: "Este tipo de reforma ha sido actualizado"
    else
      render :edit
    end
  end

  def destroy
    modification = Modification.find(params[:id])
    modification.destroy
    redirect_to modifications_path, alert: "El tipo de reforma fue eliminado"
  end

private
  def zone_params
    params.require(:modification).permit(:descripcion)
  end

end
