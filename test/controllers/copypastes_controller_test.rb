require 'test_helper'

class CopypastesControllerTest < ActionController::TestCase
  setup do
    @copypaste = copypastes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:copypastes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create copypaste" do
    assert_difference('Copypaste.count') do
      post :create, copypaste: { content: @copypaste.content }
    end

    assert_redirected_to copypaste_path(assigns(:copypaste))
  end

  test "should show copypaste" do
    get :show, id: @copypaste
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @copypaste
    assert_response :success
  end

  test "should update copypaste" do
    patch :update, id: @copypaste, copypaste: { content: @copypaste.content }
    assert_redirected_to copypaste_path(assigns(:copypaste))
  end

  test "should destroy copypaste" do
    assert_difference('Copypaste.count', -1) do
      delete :destroy, id: @copypaste
    end

    assert_redirected_to copypastes_path
  end
end
