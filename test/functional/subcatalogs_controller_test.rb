require 'test_helper'

class SubcatalogsControllerTest < ActionController::TestCase
  setup do
    @subcatalog = subcatalogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subcatalogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subcatalog" do
    assert_difference('Subcatalog.count') do
      post :create, subcatalog: { name: @subcatalog.name }
    end

    assert_redirected_to subcatalog_path(assigns(:subcatalog))
  end

  test "should show subcatalog" do
    get :show, id: @subcatalog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subcatalog
    assert_response :success
  end

  test "should update subcatalog" do
    put :update, id: @subcatalog, subcatalog: { name: @subcatalog.name }
    assert_redirected_to subcatalog_path(assigns(:subcatalog))
  end

  test "should destroy subcatalog" do
    assert_difference('Subcatalog.count', -1) do
      delete :destroy, id: @subcatalog
    end

    assert_redirected_to subcatalogs_path
  end
end
