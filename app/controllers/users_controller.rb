class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
    cookies.delete(:remember_code)
    cookies.delete(:added_products)
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end
  
  def login
    redirect_to @user
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    
    @coreuser = Coredealer.find_by(:membership_no => user_params[:dealership_code])
    
    respond_to do |format|
      
      is_coreexist = false
      if @coreuser 
        tempStr = @coreuser.agency_name
        tempStr.downcase!
        tempStr2 = user_params[:dealership_name]
        tempStr2.downcase!
        if tempStr.strip == tempStr2.strip
          is_coreexist = true
        end 
      end
      
      if is_coreexist
        if @user.save
          format.html { redirect_to root_url, notice: 'Dealer is successfully created.' }
          format.json { render action: 'show', status: :created, location: @user }
        else
          format.html { render action: 'new' }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      else
          format.html { redirect_to root_url, alert: 'Dealer is not created. Contact Everest to take Dealership.' }
          format.json { render json: @user.errors, status: :unprocessable_entity } 
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find_by_dealership_code(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:dealership_code, :dealership_name, :contact_person, :address, :city, :contact, :weekly_submission)
    end
end
