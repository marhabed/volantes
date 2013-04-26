require 'test_helper'

class FavoriteCompaniesControllerTest < ActionController::TestCase
  setup do
    @favorite_company = favorite_companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:favorite_companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create favorite_company" do
    assert_difference('FavoriteCompany.count') do
      post :create, favorite_company: {  }
    end

    assert_redirected_to favorite_company_path(assigns(:favorite_company))
  end

  test "should show favorite_company" do
    get :show, id: @favorite_company
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @favorite_company
    assert_response :success
  end

  test "should update favorite_company" do
    put :update, id: @favorite_company, favorite_company: {  }
    assert_redirected_to favorite_company_path(assigns(:favorite_company))
  end

  test "should destroy favorite_company" do
    assert_difference('FavoriteCompany.count', -1) do
      delete :destroy, id: @favorite_company
    end

    assert_redirected_to favorite_companies_path
  end
end
