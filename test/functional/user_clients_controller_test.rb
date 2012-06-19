require 'test_helper'

class UserClientsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

end
