require 'test_helper'

class CoredealersControllerTest < ActionController::TestCase
  setup do
    @coredealer = coredealers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coredealers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coredealer" do
    assert_difference('Coredealer.count') do
      post :create, coredealer: { AGENCY_NAME: @coredealer.AGENCY_NAME, Average_value: @coredealer.Average_value, Communication_Address: @coredealer.Communication_Address, Contact_Person: @coredealer.Contact_Person, Email_ID: @coredealer.Email_ID, MEMBERSHIP_NO: @coredealer.MEMBERSHIP_NO, Mobile_Number: @coredealer.Mobile_Number, STATE: @coredealer.STATE, Sales_District_Description: @coredealer.Sales_District_Description, Sales_District_no: @coredealer.Sales_District_no, Tonnage_Per_Month: @coredealer.Tonnage_Per_Month, Total: @coredealer.Total, Zone: @coredealer.Zone }
    end

    assert_redirected_to coredealer_path(assigns(:coredealer))
  end

  test "should show coredealer" do
    get :show, id: @coredealer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coredealer
    assert_response :success
  end

  test "should update coredealer" do
    patch :update, id: @coredealer, coredealer: { AGENCY_NAME: @coredealer.AGENCY_NAME, Average_value: @coredealer.Average_value, Communication_Address: @coredealer.Communication_Address, Contact_Person: @coredealer.Contact_Person, Email_ID: @coredealer.Email_ID, MEMBERSHIP_NO: @coredealer.MEMBERSHIP_NO, Mobile_Number: @coredealer.Mobile_Number, STATE: @coredealer.STATE, Sales_District_Description: @coredealer.Sales_District_Description, Sales_District_no: @coredealer.Sales_District_no, Tonnage_Per_Month: @coredealer.Tonnage_Per_Month, Total: @coredealer.Total, Zone: @coredealer.Zone }
    assert_redirected_to coredealer_path(assigns(:coredealer))
  end

  test "should destroy coredealer" do
    assert_difference('Coredealer.count', -1) do
      delete :destroy, id: @coredealer
    end

    assert_redirected_to coredealers_path
  end
end
