class BuildingsController < ApplicationController
  def index
    @buildings = Building.all
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

  # parameters
  def building_params
    params.require(:building).permit(:code, :title, :description)
  end

end
