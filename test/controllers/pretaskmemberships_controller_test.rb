require 'test_helper'

class PretaskmembershipsControllerTest < ActionController::TestCase
  setup do
    @pretaskmembership = pretaskmemberships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pretaskmemberships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pretaskmembership" do
    assert_difference('Pretaskmembership.count') do
      post :create, pretaskmembership: { pretask_id: @pretaskmembership.pretask_id, pretmember: @pretaskmembership.pretmember, user_id: @pretaskmembership.user_id }
    end

    assert_redirected_to pretaskmembership_path(assigns(:pretaskmembership))
  end

  test "should show pretaskmembership" do
    get :show, id: @pretaskmembership
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pretaskmembership
    assert_response :success
  end

  test "should update pretaskmembership" do
    patch :update, id: @pretaskmembership, pretaskmembership: { pretask_id: @pretaskmembership.pretask_id, pretmember: @pretaskmembership.pretmember, user_id: @pretaskmembership.user_id }
    assert_redirected_to pretaskmembership_path(assigns(:pretaskmembership))
  end

  test "should destroy pretaskmembership" do
    assert_difference('Pretaskmembership.count', -1) do
      delete :destroy, id: @pretaskmembership
    end

    assert_redirected_to pretaskmemberships_path
  end
end
