require 'test_helper'

class DetailTransactionsControllerTest < ActionController::TestCase
  setup do
    @detail_transaction = detail_transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detail_transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detail_transaction" do
    assert_difference('DetailTransaction.count') do
      post :create, detail_transaction: { breakage: @detail_transaction.breakage, dealership_code: @detail_transaction.dealership_code, estimatedSelling: @detail_transaction.estimatedSelling, openingStock: @detail_transaction.openingStock, purchaseWeekStock: @detail_transaction.purchaseWeekStock, salesWeekStock: @detail_transaction.salesWeekStock, sku: @detail_transaction.sku, submission_date: @detail_transaction.submission_date, transaction_no: @detail_transaction.transaction_no }
    end

    assert_redirected_to detail_transaction_path(assigns(:detail_transaction))
  end

  test "should show detail_transaction" do
    get :show, id: @detail_transaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detail_transaction
    assert_response :success
  end

  test "should update detail_transaction" do
    patch :update, id: @detail_transaction, detail_transaction: { breakage: @detail_transaction.breakage, dealership_code: @detail_transaction.dealership_code, estimatedSelling: @detail_transaction.estimatedSelling, openingStock: @detail_transaction.openingStock, purchaseWeekStock: @detail_transaction.purchaseWeekStock, salesWeekStock: @detail_transaction.salesWeekStock, sku: @detail_transaction.sku, submission_date: @detail_transaction.submission_date, transaction_no: @detail_transaction.transaction_no }
    assert_redirected_to detail_transaction_path(assigns(:detail_transaction))
  end

  test "should destroy detail_transaction" do
    assert_difference('DetailTransaction.count', -1) do
      delete :destroy, id: @detail_transaction
    end

    assert_redirected_to detail_transactions_path
  end
end
