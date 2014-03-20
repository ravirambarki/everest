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
      post :create, coredealer: { agency_name: @coredealer.agency_name, average_value: @coredealer.average_value, communication_address: @coredealer.communication_address, contact_person: @coredealer.contact_person, email_id: @coredealer.email_id, membership_no: @coredealer.membership_no, mobile_number: @coredealer.mobile_number, sales_district_description: @coredealer.sales_district_description, sales_district_no: @coredealer.sales_district_no, state: @coredealer.state, tonnage_per_month: @coredealer.tonnage_per_month, total: @coredealer.total, zone: @coredealer.zone }
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
    patch :update, id: @coredealer, coredealer: { agency_name: @coredealer.agency_name, average_value: @coredealer.average_value, communication_address: @coredealer.communication_address, contact_person: @coredealer.contact_person, email_id: @coredealer.email_id, membership_no: @coredealer.membership_no, mobile_number: @coredealer.mobile_number, sales_district_description: @coredealer.sales_district_description, sales_district_no: @coredealer.sales_district_no, state: @coredealer.state, tonnage_per_month: @coredealer.tonnage_per_month, total: @coredealer.total, zone: @coredealer.zone }
    assert_redirected_to coredealer_path(assigns(:coredealer))
  end

  test "should destroy coredealer" do
    assert_difference('Coredealer.count', -1) do
      delete :destroy, id: @coredealer
    end

    assert_redirected_to coredealers_path
  end
end
