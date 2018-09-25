class TechnologiesController < ApplicationController
  def new
    @t = Technology.new
  end

  def create
    @t = Technology.new(technology_params)
    if @t.save
      redirect_to technologies_path, notice: "Se agrego una nueva marca de radio"
    else
      render :new
    end
  end

  def edit
    @t = Technology.find(params[:id])
  end

  def update
    @t = Technology.find(params[:id])
    if @t.update(technology_params)
      redirect_to technology_path, notice: "Esta marca ha sido actualizada"
    else
      render :edit
    end
  end

  def destroy
    technology = Technology.find(params[:id])
    technology.destroy
    redirect_to technologies_path, notice: "La marca fue eliminada"
  end
end
