require 'test_helper'

class TaskdependsControllerTest < ActionController::TestCase
  setup do
    @taskdepend = taskdepends(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taskdepends)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taskdepend" do
    assert_difference('Taskdepend.count') do
      post :create, taskdepend: { task_id: @taskdepend.task_id, taskdependto_id: @taskdepend.taskdependto_id }
    end

    assert_redirected_to taskdepend_path(assigns(:taskdepend))
  end

  test "should show taskdepend" do
    get :show, id: @taskdepend
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @taskdepend
    assert_response :success
  end

  test "should update taskdepend" do
    patch :update, id: @taskdepend, taskdepend: { task_id: @taskdepend.task_id, taskdependto_id: @taskdepend.taskdependto_id }
    assert_redirected_to taskdepend_path(assigns(:taskdepend))
  end

  test "should destroy taskdepend" do
    assert_difference('Taskdepend.count', -1) do
      delete :destroy, id: @taskdepend
    end

    assert_redirected_to taskdepends_path
  end
end
