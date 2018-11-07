class ReformsController < ApplicationController

  def index
    @r = Reform.all
  end

  def new
    @r = Reform.new
  end

  def create
    @r = Reform.new(reform_params)
    if @r.save
      redirect_to reforms_path, notice: "Se agrego una nueva Reforma"
    end
  end

  def edit
    @r = Reform.find(params[:id])
  end

  def update
    @r = Reform.find(params[:id])
    if @r.update(reform_params)
      redirect_to reforms_path, notice: "Esta Reforma ha sido actualizada"
    else
      render :edit
    end
  end

  def destroy
    reform = Reform.find(params[:id])
    reform.destroy
    redirect_to reforms_path, alert: "La Reforma fue eliminada"
  end

  private
    def reform_params
      params.require(:reform).permit(:fecha, :proyecto, :obra)
    end
end
