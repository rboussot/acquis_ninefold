require 'test_helper'

class MesCoursControllerTest < ActionController::TestCase
  test "should get litterature" do
    get :litterature
    assert_response :success
  end

  test "should get methode" do
    get :methode
    assert_response :success
  end

  test "should get grammaire" do
    get :grammaire
    assert_response :success
  end

  test "should get stylistique" do
    get :stylistique
    assert_response :success
  end

end
