class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new
    @rooms = Room.new
  end

  def create
    room = Room.new(room_params)
    if room.save
      redirect_to :adminRooms
    else
      flash[:errors] = room.errors.full_messages
      redirect_to new_room_path
    end
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    room = Room.find(params[:id])
    if room.update(room_params)
      redirect_to :adminRooms
    else
      flash[:errors] = room.errors.full_messages
      redirect_to edit_room_path(room.id)
    end
  end

  def destroy
    Room.destroy(params[:id])
    redirect_to :adminRooms
  end


  # parameters
  def room_params
    params.require(:room).permit(:code, :title, :building_id, :capacity)
  end
end
