require 'test_helper'

class SuppliesControllerTest < ActionController::TestCase
  setup do
    @supply = supplies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supplies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supply" do
    assert_difference('Supply.count') do
      post :create, supply: { active: @supply.active, address: @supply.address, daily_rate: @supply.daily_rate, hourly_rate: @supply.hourly_rate, monthly_rate: @supply.monthly_rate, number_space: @supply.number_space, region_id: @supply.region_id, state_id: @supply.state_id, weekly_rate: @supply.weekly_rate, zone_id: @supply.zone_id }
    end

    assert_redirected_to supply_path(assigns(:supply))
  end

  test "should show supply" do
    get :show, id: @supply
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supply
    assert_response :success
  end

  test "should update supply" do
    patch :update, id: @supply, supply: { active: @supply.active, address: @supply.address, daily_rate: @supply.daily_rate, hourly_rate: @supply.hourly_rate, monthly_rate: @supply.monthly_rate, number_space: @supply.number_space, region_id: @supply.region_id, state_id: @supply.state_id, weekly_rate: @supply.weekly_rate, zone_id: @supply.zone_id }
    assert_redirected_to supply_path(assigns(:supply))
  end

  test "should destroy supply" do
    assert_difference('Supply.count', -1) do
      delete :destroy, id: @supply
    end

    assert_redirected_to supplies_path
  end
end
