require 'test_helper'

class VistaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vistum = vista(:one)
  end

  test "should get index" do
    get vista_url
    assert_response :success
  end

  test "should get new" do
    get new_vistum_url
    assert_response :success
  end

  test "should create vistum" do
    assert_difference('Vistum.count') do
      post vista_url, params: { vistum: { tittle: @vistum.tittle } }
    end

    assert_redirected_to vistum_url(Vistum.last)
  end

  test "should show vistum" do
    get vistum_url(@vistum)
    assert_response :success
  end

  test "should get edit" do
    get edit_vistum_url(@vistum)
    assert_response :success
  end

  test "should update vistum" do
    patch vistum_url(@vistum), params: { vistum: { tittle: @vistum.tittle } }
    assert_redirected_to vistum_url(@vistum)
  end

  test "should destroy vistum" do
    assert_difference('Vistum.count', -1) do
      delete vistum_url(@vistum)
    end

    assert_redirected_to vista_url
  end
end
