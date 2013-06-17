require 'test_helper'

class BranchFlyersControllerTest < ActionController::TestCase
  setup do
    @branch_flyer = branch_flyers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:branch_flyers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create branch_flyer" do
    assert_difference('BranchFlyer.count') do
      post :create, branch_flyer: { branch_id: @branch_flyer.branch_id, flyer_id: @branch_flyer.flyer_id }
    end

    assert_redirected_to branch_flyer_path(assigns(:branch_flyer))
  end

  test "should show branch_flyer" do
    get :show, id: @branch_flyer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @branch_flyer
    assert_response :success
  end

  test "should update branch_flyer" do
    put :update, id: @branch_flyer, branch_flyer: { branch_id: @branch_flyer.branch_id, flyer_id: @branch_flyer.flyer_id }
    assert_redirected_to branch_flyer_path(assigns(:branch_flyer))
  end

  test "should destroy branch_flyer" do
    assert_difference('BranchFlyer.count', -1) do
      delete :destroy, id: @branch_flyer
    end

    assert_redirected_to branch_flyers_path
  end
end
