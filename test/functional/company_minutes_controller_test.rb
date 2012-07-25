require 'test_helper'

class CompanyMinutesControllerTest < ActionController::TestCase
  setup do
    @company_minute = company_minutes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:company_minutes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company_minute" do
    assert_difference('CompanyMinute.count') do
      post :create, :company_minute => @company_minute.attributes
    end

    assert_redirected_to company_minute_path(assigns(:company_minute))
  end

  test "should show company_minute" do
    get :show, :id => @company_minute.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @company_minute.to_param
    assert_response :success
  end

  test "should update company_minute" do
    put :update, :id => @company_minute.to_param, :company_minute => @company_minute.attributes
    assert_redirected_to company_minute_path(assigns(:company_minute))
  end

  test "should destroy company_minute" do
    assert_difference('CompanyMinute.count', -1) do
      delete :destroy, :id => @company_minute.to_param
    end

    assert_redirected_to company_minutes_path
  end
end
