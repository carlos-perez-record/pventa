class TasksController < ApplicationController
  def index
    @task = Task.all
  end

  def new
    @task = Task.new
    @task.activity_id = params[:activity_id]
    @visibilidad = params[:visible]
  end

  def create
    @task = Task.new(task_params)
    session[:return_to] ||= request.referer
    if @task.save
      redirect_to session.delete(:return_to), notice: "Se agrego una nueva tarea"
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      session[:return_to] ||= request.referer
      redirect_to session.delete(:return_to), notice: "Esta Tarea ha sido actualizada"
    else
      render :edit
    end
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    session[:return_to] ||= request.referer
    redirect_to session.delete(:return_to), alert: "La tarea fue eliminida"
  end

  private
    def task_params
      params.require(:task).permit(:descripcion, :cantidad, :valor_unitario, :unity_id, :activity_id)
    end
end
