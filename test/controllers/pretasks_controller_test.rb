require 'test_helper'

class PretasksControllerTest < ActionController::TestCase
  setup do
    @pretask = pretasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pretasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pretask" do
    assert_difference('Pretask.count') do
      post :create, pretask: { name: @pretask.name }
    end

    assert_redirected_to pretask_path(assigns(:pretask))
  end

  test "should show pretask" do
    get :show, id: @pretask
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pretask
    assert_response :success
  end

  test "should update pretask" do
    patch :update, id: @pretask, pretask: { name: @pretask.name }
    assert_redirected_to pretask_path(assigns(:pretask))
  end

  test "should destroy pretask" do
    assert_difference('Pretask.count', -1) do
      delete :destroy, id: @pretask
    end

    assert_redirected_to pretasks_path
  end
end
