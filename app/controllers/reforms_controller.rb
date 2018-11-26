class ReformsController < ApplicationController

  def index
    @r = Reform.all
  end

  def new
    @r = Reform.new
    @r.point_id = params[:point_id]
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
      redirect_to reforms_path, notice: "Esta Reforma ha sido actualizada"
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
