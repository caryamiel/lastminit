require 'test_helper'

class PredependsControllerTest < ActionController::TestCase
  setup do
    @predepend = predepends(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:predepends)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create predepend" do
    assert_difference('Predepend.count') do
      post :create, predepend: { pretask_id: @predepend.pretask_id, pretaskdependto_id: @predepend.pretaskdependto_id }
    end

    assert_redirected_to predepend_path(assigns(:predepend))
  end

  test "should show predepend" do
    get :show, id: @predepend
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @predepend
    assert_response :success
  end

  test "should update predepend" do
    patch :update, id: @predepend, predepend: { pretask_id: @predepend.pretask_id, pretaskdependto_id: @predepend.pretaskdependto_id }
    assert_redirected_to predepend_path(assigns(:predepend))
  end

  test "should destroy predepend" do
    assert_difference('Predepend.count', -1) do
      delete :destroy, id: @predepend
    end

    assert_redirected_to predepends_path
  end
end
