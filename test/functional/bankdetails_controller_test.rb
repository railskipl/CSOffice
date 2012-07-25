require 'test_helper'

class BankdetailsControllerTest < ActionController::TestCase
  setup do
    @bankdetail = bankdetails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bankdetails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bankdetail" do
    assert_difference('Bankdetail.count') do
      post :create, :bankdetail => @bankdetail.attributes
    end

    assert_redirected_to bankdetail_path(assigns(:bankdetail))
  end

  test "should show bankdetail" do
    get :show, :id => @bankdetail.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @bankdetail.to_param
    assert_response :success
  end

  test "should update bankdetail" do
    put :update, :id => @bankdetail.to_param, :bankdetail => @bankdetail.attributes
    assert_redirected_to bankdetail_path(assigns(:bankdetail))
  end

  test "should destroy bankdetail" do
    assert_difference('Bankdetail.count', -1) do
      delete :destroy, :id => @bankdetail.to_param
    end

    assert_redirected_to bankdetails_path
  end
end
