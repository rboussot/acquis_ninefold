require 'test_helper'

class LienthemesControllerTest < ActionController::TestCase
  setup do
    @lientheme = lienthemes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lienthemes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lientheme" do
    assert_difference('Lientheme.count') do
      post :create, lientheme: { oeuvre_id: @lientheme.oeuvre_id, theme_id: @lientheme.theme_id }
    end

    assert_redirected_to lientheme_path(assigns(:lientheme))
  end

  test "should show lientheme" do
    get :show, id: @lientheme
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lientheme
    assert_response :success
  end

  test "should update lientheme" do
    patch :update, id: @lientheme, lientheme: { oeuvre_id: @lientheme.oeuvre_id, theme_id: @lientheme.theme_id }
    assert_redirected_to lientheme_path(assigns(:lientheme))
  end

  test "should destroy lientheme" do
    assert_difference('Lientheme.count', -1) do
      delete :destroy, id: @lientheme
    end

    assert_redirected_to lienthemes_path
  end
end
