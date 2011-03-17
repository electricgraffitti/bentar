require 'test_helper'

class AssociatesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:associates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create associate" do
    assert_difference('Associate.count') do
      post :create, :associate => { }
    end

    assert_redirected_to associate_path(assigns(:associate))
  end

  test "should show associate" do
    get :show, :id => associates(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => associates(:one).to_param
    assert_response :success
  end

  test "should update associate" do
    put :update, :id => associates(:one).to_param, :associate => { }
    assert_redirected_to associate_path(assigns(:associate))
  end

  test "should destroy associate" do
    assert_difference('Associate.count', -1) do
      delete :destroy, :id => associates(:one).to_param
    end

    assert_redirected_to associates_path
  end
end
