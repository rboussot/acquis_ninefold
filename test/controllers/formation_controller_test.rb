require 'test_helper'

class FormationControllerTest < ActionController::TestCase
  test "should get module" do
    get :module
    assert_response :success
  end

end
