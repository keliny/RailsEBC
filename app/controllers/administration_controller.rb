class AdministrationController < ApplicationController
  def index

  end

  # building CRUD
  def buildings # show buildings
    @buildings_data = Building.all
  end

  def createBuilding
    @buildings = Building.new
  end

  def editBuilding
    @building = Building.find(params[:id])
  end


  # Course CRUD
  def courses

  end
  # Lesson CRUD
  def lessons

  end

  #Teachers CRUD
  def teachers

  end

  # Students CRUD
  def students

  end

  # Rooms CRUD
  def rooms
    @rooms = Room.all
  end




end
