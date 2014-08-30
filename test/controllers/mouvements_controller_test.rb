require 'test_helper'

class MouvementsControllerTest < ActionController::TestCase
  setup do
    @mouvement = mouvements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mouvements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mouvement" do
    assert_difference('Mouvement.count') do
      post :create, mouvement: { titre_mouvement: @mouvement.titre_mouvement }
    end

    assert_redirected_to mouvement_path(assigns(:mouvement))
  end

  test "should show mouvement" do
    get :show, id: @mouvement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mouvement
    assert_response :success
  end

  test "should update mouvement" do
    patch :update, id: @mouvement, mouvement: { titre_mouvement: @mouvement.titre_mouvement }
    assert_redirected_to mouvement_path(assigns(:mouvement))
  end

  test "should destroy mouvement" do
    assert_difference('Mouvement.count', -1) do
      delete :destroy, id: @mouvement
    end

    assert_redirected_to mouvements_path
  end
end
