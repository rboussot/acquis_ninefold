require 'test_helper'

class OeuvresControllerTest < ActionController::TestCase
  setup do
    @oeuvre = oeuvres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:oeuvres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create oeuvre" do
    assert_difference('Oeuvre.count') do
      post :create, oeuvre: { auteur_id: @oeuvre.auteur_id, genre: @oeuvre.genre, mouvement: @oeuvre.mouvement, titre_oeuvre: @oeuvre.titre_oeuvre }
    end

    assert_redirected_to oeuvre_path(assigns(:oeuvre))
  end

  test "should show oeuvre" do
    get :show, id: @oeuvre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @oeuvre
    assert_response :success
  end

  test "should update oeuvre" do
    patch :update, id: @oeuvre, oeuvre: { auteur_id: @oeuvre.auteur_id, genre: @oeuvre.genre, mouvement: @oeuvre.mouvement, titre_oeuvre: @oeuvre.titre_oeuvre }
    assert_redirected_to oeuvre_path(assigns(:oeuvre))
  end

  test "should destroy oeuvre" do
    assert_difference('Oeuvre.count', -1) do
      delete :destroy, id: @oeuvre
    end

    assert_redirected_to oeuvres_path
  end
end
