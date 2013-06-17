require 'test_helper'

class FlyerUsersControllerTest < ActionController::TestCase
  setup do
    @flyer_user = flyer_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flyer_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flyer_user" do
    assert_difference('FlyerUser.count') do
      post :create, flyer_user: { flyer_id: @flyer_user.flyer_id, user_id: @flyer_user.user_id }
    end

    assert_redirected_to flyer_user_path(assigns(:flyer_user))
  end

  test "should show flyer_user" do
    get :show, id: @flyer_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flyer_user
    assert_response :success
  end

  test "should update flyer_user" do
    put :update, id: @flyer_user, flyer_user: { flyer_id: @flyer_user.flyer_id, user_id: @flyer_user.user_id }
    assert_redirected_to flyer_user_path(assigns(:flyer_user))
  end

  test "should destroy flyer_user" do
    assert_difference('FlyerUser.count', -1) do
      delete :destroy, id: @flyer_user
    end

    assert_redirected_to flyer_users_path
  end
end
