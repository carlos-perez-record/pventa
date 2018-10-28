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
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

private

  def active_params
    params.require(:active).permit(:ip, :serial, :placa)
  end

end
