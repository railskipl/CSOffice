require 'test_helper'

class SetModsControllerTest < ActionController::TestCase
  test "should get def" do
    get :def
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
