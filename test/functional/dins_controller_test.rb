require 'test_helper'

class DinsControllerTest < ActionController::TestCase
  setup do
    @din = dins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create din" do
    assert_difference('Din.count') do
      post :create, :din => @din.attributes
    end

    assert_redirected_to din_path(assigns(:din))
  end

  test "should show din" do
    get :show, :id => @din.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @din.to_param
    assert_response :success
  end

  test "should update din" do
    put :update, :id => @din.to_param, :din => @din.attributes
    assert_redirected_to din_path(assigns(:din))
  end

  test "should destroy din" do
    assert_difference('Din.count', -1) do
      delete :destroy, :id => @din.to_param
    end

    assert_redirected_to dins_path
  end
end
