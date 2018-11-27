class ActivitiesController < ApplicationController

  def index
    @ac = Activity.all
  end

  def new
    @ac = Activity.new
    @ac.reform_id = params[:reform_id]
    @visibilidad = params[:visible]
  end

  def create
    @ac = Activity.new(activity_params)
    session[:return_to] ||= request.referer
    if @ac.save
      redirect_to session.delete(:return_to), notice: "Se agrego una nueva actividad"
    end
  end

  def show
    @ac = Activity.find(params[:id])
  end

  def edit
    @ac = Activity.find(params[:id])
  end

  def update
    @ac = Activity.find(params[:id])
    if @ac.update(activity_params)
      session[:return_to] ||= request.referer
      redirect_to session.delete(:return_to), notice: "La Actividad ha sido actualizada"
    else
      render :edit
    end
  end

  def destroy
    activity = Activity.find(params[:id])
    activity.destroy
    session[:return_to] ||= request.referer
    redirect_to session.delete(:return_to), alert: "La actividad ha sido eliminada"
  end

private
  def activity_params
    params.require(:activity).permit(:descripcion, :reform_id)
  end

end
