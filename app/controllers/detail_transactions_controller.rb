class DetailTransactionsController < ApplicationController
  before_action :set_detail_transaction, only: [:show, :edit, :update, :destroy]

  # GET /detail_transactions
  # GET /detail_transactions.json
  def index
    @detail_transactions = DetailTransaction.all
  end

  # GET /detail_transactions/1
  # GET /detail_transactions/1.json
  def show
  end

  # GET /detail_transactions/new
  def new
    if is_correct_day
      if params[:membership_code].present?
        @user = User.find_by_dealership_code(params[:membership_code])
      end 
    
      if cookies[:remember_code] && !@user
        @user = User.find_by_dealership_code(cookies[:remember_code])
      end
    
      if @user
        cookies.permanent[:remember_code] = @user.dealership_code
        @detail_transaction = DetailTransaction.new
      else
        redirect_to(root_url , notice: 'Please Enter valid Membership Code')
      end
    else
      redirect_to(root_url , notice: 'Data Can only be entered on Monday/Thesday')
    end     
  end

  # GET /detail_transactions/1/edit
  def edit
  end

  # POST /detail_transactions
  # POST /detail_transactions.json
  def create
    @detail_transaction = DetailTransaction.new(detail_transaction_params)
    
    recent_dt = DetailTransaction.find(:first, :order => "created_at DESC", :conditions => [ "sku = ? AND dealership_code = ?", detail_transaction_params[:sku], detail_transaction_params[:dealership_code]])

    respond_to do |format|
      if recent_dt   
        @date = Time.now.to_date
        @todayweek = @date.strftime("%U")
        @recardif = recent_dt.created_at.strftime("%U")   
      
        if @todayweek = @recardif
          format.html { redirect_to new_detail_transaction_path, alert: "Week details are already entered for #{detail_transaction_params[:sku]}" }
          format.json { render json: @detail_transaction.errors, status: "Week details are already entered for #{detail_transaction_params[:sku]}"  }
        end
      end
        
      if @detail_transaction.save
        if params[:commit] == "Add Product"
          format.html { redirect_to new_detail_transaction_path, notice: 'Detail transaction was successfully created.' }
        else
          format.html { redirect_to root_url , notice: 'Thanks for Submiting the information.' }
        end
        format.json { render action: 'show', status: :created, location: @detail_transaction }
      else
        format.html { render action: 'new' }
        format.json { render json: @detail_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detail_transactions/1
  # PATCH/PUT /detail_transactions/1.json
  def update
    respond_to do |format|
      if @detail_transaction.update(detail_transaction_params)
        format.html { redirect_to @detail_transaction, notice: 'Detail transaction was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @detail_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detail_transactions/1
  # DELETE /detail_transactions/1.json
  def destroy
    @detail_transaction.destroy
    respond_to do |format|
      format.html { redirect_to detail_transactions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detail_transaction
      @detail_transaction = DetailTransaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detail_transaction_params
      params.require(:detail_transaction).permit(:transaction_no, :dealership_code, :sku, :openingStock, :purchaseWeekStock, :salesWeekStock, :estimatedSelling, :breakage, :submission_date)
    end
end
