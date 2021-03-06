class MaintenanceTypesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_maintenance_type, only: [:show, :edit, :update, :destroy]
  layout "dashboard"
  # GET /maintenance_types
  # GET /maintenance_types.json
  def index
    @maintenance_types = MaintenanceType.all
  end

  # GET /maintenance_types/1
  # GET /maintenance_types/1.json
  def show
  end

  # GET /maintenance_types/new
  def new
    @maintenance_type = MaintenanceType.new
  end

  # GET /maintenance_types/1/edit
  def edit
  end

  # POST /maintenance_types
  # POST /maintenance_types.json
  def create
    @maintenance_type = current_user.maintenance_types.build(maintenance_type_params)

    respond_to do |format|
      if @maintenance_type.save
        @maintenance_types = MaintenanceType.all
        format.html { redirect_to @maintenance_type, notice: 'Maintenance type was successfully created.' }
        format.json { render :show, status: :created, location: @maintenance_type }
        format.js
      else
        format.html { render :new }
        format.json { render json: @maintenance_type.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /maintenance_types/1
  # PATCH/PUT /maintenance_types/1.json
  def update
    respond_to do |format|
      if @maintenance_type.update(maintenance_type_params)
        @maintenance_types = MaintenanceType.all
        format.html { redirect_to @maintenance_type, notice: 'Maintenance type was successfully updated.' }
        format.json { render :show, status: :ok, location: @maintenance_type }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @maintenance_type.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  def delete
      @maintenance_type = MaintenanceType.find_by(uid: params[:maintenance_type_id])
    end

  # DELETE /maintenance_types/1
  # DELETE /maintenance_types/1.json
  def destroy
    @maintenance_type.destroy
    respond_to do |format|
      format.html { redirect_to maintenance_types_url, notice: 'Maintenance type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maintenance_type
      @maintenance_type = MaintenanceType.find_by(uid: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def maintenance_type_params
      params.require(:maintenance_type).permit(:name)
    end
end
