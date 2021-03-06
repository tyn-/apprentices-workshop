class RoomsController < ApplicationController
  before_action :authenticate_user!#, except: [:index]
  before_action :set_area, only: [:index, :show, :new, :edit, :create, :update, :destroy, :edit_multiple]
  before_action :set_room, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:new, :edit, :create, :update, :destroy] #[:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @rooms = @area.rooms

    if params[:purge]
      @area.rooms.where(:name => '<room name here>').each do |room|
        Exit.where(:exit_room_id => room.id).delete_all
        room.destroy
      end
      redirect_to area_rooms_path(@area), notice: 'Purged unedited rooms.'
    end

  end

  def show

  end

  def new
    if params[:makeallrooms]
      $make_qty = @area.vnum_qty - @area.rooms.count
      $make_qty.times do
        @area.rooms.create(:vnum => @area.nextroomvnum,
                           :name => '<room name here>',
                           :description => '<room description here>',
                           :terrain => @area.default_terrain,
                           :room_flags => @area.default_room_flags
                          )
      end
      @area.update(:last_updated_at => Time.now, :last_updated_by => current_user.id)
      redirect_to area_rooms_path(@area), notice: 'Empty rooms created.'
    else
      @room = @area.rooms.build
      @room.vnum = params[:vnum]
      @room.name = params[:name]
      @room.description = params[:description]
      @room.terrain = params[:terrain]
      @room.room_flags = params[:room_flags]

      @room.vnum ||= @area.nextroomvnum
      @room.terrain ||= @area.default_terrain
      @room.room_flags ||= @area.default_room_flags
      @room.description = '<room description here>'
      @room.name = '<room name here>'
    end
  end

  def edit

  end

  def create
    if not params[:room]
      @room = @area.rooms.build
    end
    @room = @area.rooms.create(room_params)
    if @room.save
      @area.update(:last_updated_at => Time.now, :last_updated_by => current_user.id)
      redirect_to area_room_path(@area, @room), notice: 'Room was sucessfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @room.update(room_params)
      @area.update(:last_updated_at => Time.now, :last_updated_by => current_user.id)
      redirect_to area_room_path(@area, @room), notice: 'Room was sucessfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @room.destroy
    Exit.where(:exit_room_id => @room.id).delete_all
    if @room.save
      @area.update(:last_updated_at => Time.now, :last_updated_by => current_user.id)
      redirect_to area_rooms_path(@area), notice: 'Room and all associated exits to this room were sucessfully deleted.'
    else
      redirect_to area_rooms_path(@area), notice: 'Something went wrong.'
    end
  end

  def edit_multiple

    if params[:room_ids]

      @rooms = Room.find(params[:room_ids])

      if params[:commit] == "Delete Selected"
        @rooms.each do |room|
          room.destroy
        end
        redirect_to area_rooms_path(@area), notice: 'Deleted multiple rooms.'
      end
      if params[:commit] == "Update Rooms"
        @rooms.reject! do |room|
          room.update_attributes(room_params.reject { |k,v| v.blank? })
        end
        if @rooms.empty?
          redirect_to area_rooms_path(@area), notice: 'Updated multiple rooms.'
        else
          render "edit_multiple"
        end
      end
    else
      redirect_to area_rooms_path(@area), notice: 'No rooms selected.'
    end
  end

  private
    def set_room
      @room = Room.find(params[:id])
    end

    def set_area
        @area = Area.find(params[:area_id])
    end

    def room_params
      params.require(:room).permit(:vnum, :name, :description, :terrain,
                                   :area_id, :room_flags, :dark, :no_sleep,
                                   :no_mob, :indoors, :foggy, :fire, :lava,
                                   :private_room, :peaceful, :solitary,
                                   :no_recall, :no_steal, :notrans,
                                   :no_spell, :seafloor, :no_fly, :holy_ground,
                                   :fly_ok, :no_quest, :no_item, :no_vnum,
                                   :guild
                                  )
    end

end
