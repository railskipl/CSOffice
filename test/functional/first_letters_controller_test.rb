require 'test_helper'

class FirstLettersControllerTest < ActionController::TestCase
  setup do
    @first_letter = first_letters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:first_letters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create first_letter" do
    assert_difference('FirstLetter.count') do
      post :create, :first_letter => @first_letter.attributes
    end

    assert_redirected_to first_letter_path(assigns(:first_letter))
  end

  test "should show first_letter" do
    get :show, :id => @first_letter.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @first_letter.to_param
    assert_response :success
  end

  test "should update first_letter" do
    put :update, :id => @first_letter.to_param, :first_letter => @first_letter.attributes
    assert_redirected_to first_letter_path(assigns(:first_letter))
  end

  test "should destroy first_letter" do
    assert_difference('FirstLetter.count', -1) do
      delete :destroy, :id => @first_letter.to_param
    end

    assert_redirected_to first_letters_path
  end
end
