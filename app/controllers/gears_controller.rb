class GearsController < ApplicationController
  before_action :authenticate_user!
    layout "dashboard"

  before_action :set_gear, only: %i[ show edit update destroy ]

  # GET /gears or /gears.json
  def index
    @gears = Gear.all
  end

  # GET /gears/1 or /gears/1.json
  def show
  end

  # GET /gears/new
  def new
    @gear_types = GearType.all
    @parks = Park.all
    @gear = Gear.new
  end

  # GET /gears/1/edit
  def edit
    @gear_types = GearType.all
    @parks = Park.all
  end

  # POST /gears or /gears.json
  def create
    @gear = current_user.gears.build(gear_params)

    respond_to do |format|
      if @gear.save
        @gears = Gear.all
        format.html { redirect_to @gear, notice: "Gear was successfully created." }
        format.json { render :show, status: :created, location: @gear }
        format.js
      else
        @gear_types = GearType.all
        @parks = Park.all

        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gear.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /gears/1 or /gears/1.json
  def update
    respond_to do |format|
      if @gear.update(gear_params)
        @gears = Gear.all
        format.html { redirect_to @gear, notice: "Gear was successfully updated." }
        format.json { render :show, status: :ok, location: @gear }
        format.js
      else
        @gear_types = GearType.all
        @parks = Park.all
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gear.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  def delete
      @gear = Gear.find_by(uid: params[:gear_id])
    end

  # DELETE /gears/1 or /gears/1.json
  def destroy
    @gear.destroy
    respond_to do |format|
      format.html { redirect_to gears_url, notice: "Gear was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gear
      @gear = Gear.find_by(uid: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gear_params
      params.require(:gear).permit(:gear_type_id, :brand, :model, :manufacture_year, :park_id, :name, :description, :status)
    end
end
