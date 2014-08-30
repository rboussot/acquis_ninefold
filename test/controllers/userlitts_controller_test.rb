require 'test_helper'

class UserlittsControllerTest < ActionController::TestCase
  setup do
    @userlitt = userlitts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userlitts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userlitt" do
    assert_difference('Userlitt.count') do
      post :create, userlitt: { oeuvre_id: @userlitt.oeuvre_id, user_id: @userlitt.user_id }
    end

    assert_redirected_to userlitt_path(assigns(:userlitt))
  end

  test "should show userlitt" do
    get :show, id: @userlitt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @userlitt
    assert_response :success
  end

  test "should update userlitt" do
    patch :update, id: @userlitt, userlitt: { oeuvre_id: @userlitt.oeuvre_id, user_id: @userlitt.user_id }
    assert_redirected_to userlitt_path(assigns(:userlitt))
  end

  test "should destroy userlitt" do
    assert_difference('Userlitt.count', -1) do
      delete :destroy, id: @userlitt
    end

    assert_redirected_to userlitts_path
  end
end
