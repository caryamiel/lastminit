require 'test_helper'

class SendattachesControllerTest < ActionController::TestCase
  setup do
    @sendattach = sendattaches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sendattaches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sendattach" do
    assert_difference('Sendattach.count') do
      post :create, sendattach: { attachment: @sendattach.attachment, description: @sendattach.description, email: @sendattach.email, name: @sendattach.name }
    end

    assert_redirected_to sendattach_path(assigns(:sendattach))
  end

  test "should show sendattach" do
    get :show, id: @sendattach
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sendattach
    assert_response :success
  end

  test "should update sendattach" do
    patch :update, id: @sendattach, sendattach: { attachment: @sendattach.attachment, description: @sendattach.description, email: @sendattach.email, name: @sendattach.name }
    assert_redirected_to sendattach_path(assigns(:sendattach))
  end

  test "should destroy sendattach" do
    assert_difference('Sendattach.count', -1) do
      delete :destroy, id: @sendattach
    end

    assert_redirected_to sendattaches_path
  end
end
