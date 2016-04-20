require 'test_helper'

class SeriesTempsControllerTest < ActionController::TestCase
  setup do
    @series_temp = series_temps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:series_temps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create series_temp" do
    assert_difference('SeriesTemp.count') do
      post :create, series_temp: { name: @series_temp.name }
    end

    assert_redirected_to series_temp_path(assigns(:series_temp))
  end

  test "should show series_temp" do
    get :show, id: @series_temp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @series_temp
    assert_response :success
  end

  test "should update series_temp" do
    patch :update, id: @series_temp, series_temp: { name: @series_temp.name }
    assert_redirected_to series_temp_path(assigns(:series_temp))
  end

  test "should destroy series_temp" do
    assert_difference('SeriesTemp.count', -1) do
      delete :destroy, id: @series_temp
    end

    assert_redirected_to series_temps_path
  end
end
