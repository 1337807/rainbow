require 'test_helper'

class RainbowsControllerTest < ActionController::TestCase
  setup do
    @rainbow = rainbows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rainbows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rainbow" do
    assert_difference('Rainbow.count') do
      post :create, rainbow: { description: @rainbow.description, name: @rainbow.name, pretty: @rainbow.pretty }
    end

    assert_redirected_to rainbow_path(assigns(:rainbow))
  end

  test "should show rainbow" do
    get :show, id: @rainbow
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rainbow
    assert_response :success
  end

  test "should update rainbow" do
    put :update, id: @rainbow, rainbow: { description: @rainbow.description, name: @rainbow.name, pretty: @rainbow.pretty }
    assert_redirected_to rainbow_path(assigns(:rainbow))
  end

  test "should destroy rainbow" do
    assert_difference('Rainbow.count', -1) do
      delete :destroy, id: @rainbow
    end

    assert_redirected_to rainbows_path
  end
end
