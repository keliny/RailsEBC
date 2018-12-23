class BuildingsController < ApplicationController
  before_action :require_login, only: [:new, :create, :edit, :update, :destroy]
  def index
    @buildings = Building.all
  end

  def new
    @buildings = Building.new
  end

  def show
    @building = Building.find(params[:id])
  end

  def schedule
    @building = Building.find(params[:id])
    @rooms = Room.where(building_id: params[:id]).includes(:lessons)
  end

  def create
    building = Building.new(building_params)
    if building.save
      redirect_to :adminBuildings
    else
      flash[:errors] = building.errors.full_messages
      redirect_to :adminBuildings
    end
  end

  def edit
    @building = Building.find(params[:id])
  end

  def update
    building = Building.find(params[:id])
    if building.update(building_params)
      redirect_to :adminBuildings
    else
      flash[:errors] = building.errors.full_messages
      redirect_to edit_building_path(building.id)
    end
  end

  def destroy
    Building.destroy(params[:id])
    redirect_to :adminBuildings
  end


  # parameters
  def building_params
    params.require(:building).permit(:code, :title, :description)
  end

end
