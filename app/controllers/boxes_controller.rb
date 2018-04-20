class BoxesController < ApplicationController
  def index
    @boxes = Box.all
    render :index
  end

  def allBoxes
    @boxes = Box.all
    @box = Box.new
    render :boxes
  end

  def show
    @box = Box.find(params[:id])
    render :show
  end

  def new
    @box = Box.new
    render :new
  end

  def create
    @box = Box.new(box_params)

    if @box.save
      redirect_to boxes_path
    else
      render :boxes
    end
  end

  def update
    @box = Box.find(params[:id])
    if @box.update(box_params)
      redirect_to boxes_path
    else
      render :boxes
    end
  end

  private
    def box_params
      params.require(:box).permit(:name, :size, :color, :price)
    end

end