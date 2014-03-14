class CoredealersController < ApplicationController
  before_action :set_coredealer, only: [:show, :edit, :update, :destroy]

  # GET /coredealers
  # GET /coredealers.json
  def index
    @coredealers = Coredealer.all
  end

  # GET /coredealers/1
  # GET /coredealers/1.json
  def show
  end

  # GET /coredealers/new
  def new
    @coredealer = Coredealer.new
  end

  # GET /coredealers/1/edit
  def edit
  end

  # POST /coredealers
  # POST /coredealers.json
  def create
    @coredealer = Coredealer.new(coredealer_params)

    respond_to do |format|
      if @coredealer.save
        format.html { redirect_to @coredealer, notice: 'Coredealer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @coredealer }
      else
        format.html { render action: 'new' }
        format.json { render json: @coredealer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coredealers/1
  # PATCH/PUT /coredealers/1.json
  def update
    respond_to do |format|
      if @coredealer.update(coredealer_params)
        format.html { redirect_to @coredealer, notice: 'Coredealer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @coredealer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coredealers/1
  # DELETE /coredealers/1.json
  def destroy
    @coredealer.destroy
    respond_to do |format|
      format.html { redirect_to coredealers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coredealer
      @coredealer = Coredealer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coredealer_params
      params.require(:coredealer).permit(:MEMBERSHIP_NO, :AGENCY_NAME, :Total, :Average_value, :Tonnage_Per_Month, :Email_ID, :Mobile_Number, :Contact_Person, :Communication_Address, :Zone, :STATE, :Sales_District_no, :Sales_District_Description)
    end
end
