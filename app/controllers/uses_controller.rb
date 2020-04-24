class UsesController < ApplicationController
  def index
    @u = Use.all
  end

  def new
    @u = Use.new
  end

  def create
    @u = Use.new(use_params)
    if @u.save
      redirect_to uses_path, notice: "Se agregó un nuevo Uso"
    end
  end

  def show
    @u = Use.find(params[:id])
  end

  def edit
    @u = Use.find(params[:id])
  end

  def update
    @u = Use.find(params[:id])
    if @u.update(use_params)
      redirect_to uses_path, notice: "Este Uso ha sido actualizado"
    else
      render :edit
    end
  end

  def destroy
    use = Use.find(params[:id])
    use.destroy
    redirect_to uses_path, alert: "El Uso fue eliminado"
  end

  private
    def use_params
      params.require(:use).permit(:description)
    end
end
