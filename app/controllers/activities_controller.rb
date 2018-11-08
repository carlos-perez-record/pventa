class ActivitiesController < ApplicationController

  def index
    @ac = Activity.all
  end

  def new
    @ac = Activity.new
  end

  def create
    @ac = Activity.new(activity_params)
    if @ac.save
      redirect_to activities_path, notice: "Se agrego una nueva actividad"
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
      redirect_to activities_path, notice: "Esta actividad ha sido actualizada"
    else
      render :edit
    end
  end

  def destroy
    activity = Activity.find(params[:id])
    activity.destroy
    redirect_to activities_path, alert: "La actividad ha sido eliminada"
  end

private
  def activity_params
    params.require(:activity).permit(:descripcion)
  end

end
