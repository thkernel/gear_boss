class GearTypesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_gear_type, only: %i[ show edit update destroy ]
  layout "dashboard"

  # GET /gear_types or /gear_types.json
  def index
    @gear_types = GearType.all
  end

  # GET /gear_types/1 or /gear_types/1.json
  def show
  end

  # GET /gear_types/new
  def new
    @gear_type = GearType.new
  end

  # GET /gear_types/1/edit
  def edit
  end

  # POST /gear_types or /gear_types.json
  def create
    @gear_type = current_user.gear_types.build(gear_type_params)

    respond_to do |format|
      if @gear_type.save
        @gear_types = GearType.all

        format.html { redirect_to @gear_type, notice: "Gear type was successfully created." }
        format.json { render :show, status: :created, location: @gear_type }
        format.js
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gear_type.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /gear_types/1 or /gear_types/1.json
  def update
    respond_to do |format|
      if @gear_type.update(gear_type_params)
        @gear_types = GearType.all
        
        format.html { redirect_to @gear_type, notice: "Gear type was successfully updated." }
        format.json { render :show, status: :ok, location: @gear_type }
        format.js
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gear_type.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  def delete
      @gear_type = GearType.find_by(uid: params[:gear_type_id])
    end

  # DELETE /gear_types/1 or /gear_types/1.json
  def destroy
    @gear_type.destroy
    respond_to do |format|
      format.html { redirect_to gear_types_url, notice: "Gear type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gear_type
      @gear_type = GearType.find_by(uid: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gear_type_params
      params.require(:gear_type).permit( :name)
    end
end
