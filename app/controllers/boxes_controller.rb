class BoxesController < ApplicationController
  def index
    @boxes = Box.all
    render :index
  end

  def allBoxes
    @boxes = Box.all
    render :boxes
  end

  def show
    @box = Box.find(params[:id])
    render :show
  end

end