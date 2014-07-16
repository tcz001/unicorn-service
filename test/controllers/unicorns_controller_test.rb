require 'test_helper'

class UnicornsControllerTest < ActionController::TestCase
  setup do
    @unicorn = unicorns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unicorns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unicorn" do
    assert_difference('Unicorn.count') do
      post :create, unicorn: { name: @unicorn.name }
    end

    assert_redirected_to unicorn_path(assigns(:unicorn))
  end

  test "should show unicorn" do
    get :show, id: @unicorn
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unicorn
    assert_response :success
  end

  test "should update unicorn" do
    patch :update, id: @unicorn, unicorn: { name: @unicorn.name }
    assert_redirected_to unicorn_path(assigns(:unicorn))
  end

  test "should destroy unicorn" do
    assert_difference('Unicorn.count', -1) do
      delete :destroy, id: @unicorn
    end

    assert_redirected_to unicorns_path
  end
end
