require 'test_helper'

class BibliothequeControllerTest < ActionController::TestCase
  test "should get parniveau" do
    get :parniveau
    assert_response :success
  end

  test "should get parsiecle" do
    get :parsiecle
    assert_response :success
  end

  test "should get parauteur" do
    get :parauteur
    assert_response :success
  end

end
