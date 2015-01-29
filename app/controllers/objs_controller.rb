class ObjsController < ApplicationController
  before_action :set_obj, only: [:show, :edit, :update, :destroy]
  before_action :set_area, only: [:index, :show, :new, :edit, :create, :update, :destroy]

  respond_to :html

  def index
    @objs = @area.objs
  end

  def show

  end

  def new
    @obj = @area.objs.build

    @obj.vnum = @area.nextobjvnum
    @obj.v0 = 0
    @obj.v1 = 0
    @obj.v2 = 0
    @obj.v3 = 0
    @obj.extra_flags = 0
    @obj.wear_flags = 1
    @obj.misc_flags = 0
    @obj.weight = 1
    @obj.cost = 0
  end

  def edit
    
  end

  def create
    @obj = @area.objs.create(obj_params)
    @obj.misc_flags ||= 0
    @obj.extra_flags ||= 0
    @obj.wear_flags ||= 0
    
    if @obj.save
      redirect_to area_obj_path(@area, @obj), notice: 'Object was sucessfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @obj.update(obj_params)
      redirect_to area_obj_path(@area, @obj), notice: 'Object was sucessfully updated.'
    else
      render action: 'edit'
    end 
  end

  def destroy
    @obj.destroy
    if @obj.save
      redirect_to area_objs_path(@area), notice: 'Object was sucessfully deleted.'
    else
      redirect_to area_objs_path(@area), notice: 'Something went wrong.'
    end
  end

  private
    def set_obj
      @obj = Obj.find(params[:id])
    end
    
    def set_area
        @area = Area.find(params[:area_id])
    end
    
    def obj_params
      params.require(:obj).permit(:area_id, :vnum, :keywords, :sdesc, :ldesc,
                                  :object_type, :v0, :v1, :v2, :v3, :extra_flags,
                                  :wear_flags, :weight, :cost, :misc_flags,
                                  :takeable, :finger, :neck, :body, :head, :legs,
                                  :feet, :hands, :arms, :shield, :about, :waist,
                                  :wrist, :hold, :decoration,
                                  :glow, :hum, :evil, :invis, :magic, :nodrop,
                                  :anti_good, :anti_evil, :anti_neutral,
                                  :noremove, :inventory, :metallic, :good,
                                  :not_purgable, :flammable, :two_handed, 
                                  :use_cost, :anti_unalign, :neutral, :no_hoard,
                                  :masked,
                                  :underwater_breath
                                  )
    end
end