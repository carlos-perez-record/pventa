class PointsController < ApplicationController
  def index
      @p = Point.all
  end

  def new
    @p = Point.new
  end

end
