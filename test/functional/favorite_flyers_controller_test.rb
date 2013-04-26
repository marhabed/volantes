require 'test_helper'

class FavoriteFlyersControllerTest < ActionController::TestCase
  setup do
    @favorite_flyer = favorite_flyers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:favorite_flyers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create favorite_flyer" do
    assert_difference('FavoriteFlyer.count') do
      post :create, favorite_flyer: {  }
    end

    assert_redirected_to favorite_flyer_path(assigns(:favorite_flyer))
  end

  test "should show favorite_flyer" do
    get :show, id: @favorite_flyer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @favorite_flyer
    assert_response :success
  end

  test "should update favorite_flyer" do
    put :update, id: @favorite_flyer, favorite_flyer: {  }
    assert_redirected_to favorite_flyer_path(assigns(:favorite_flyer))
  end

  test "should destroy favorite_flyer" do
    assert_difference('FavoriteFlyer.count', -1) do
      delete :destroy, id: @favorite_flyer
    end

    assert_redirected_to favorite_flyers_path
  end
end
