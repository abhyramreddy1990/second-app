require 'test_helper'

class SampleappsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sampleapp = sampleapps(:one)
  end

  test "should get index" do
    get sampleapps_url
    assert_response :success
  end

  test "should get new" do
    get new_sampleapp_url
    assert_response :success
  end

  test "should create sampleapp" do
    assert_difference('Sampleapp.count') do
      post sampleapps_url, params: { sampleapp: { Address: @sampleapp.Address, Country: @sampleapp.Country, Fname: @sampleapp.Fname, Gender: @sampleapp.Gender, Lname: @sampleapp.Lname } }
    end

    assert_redirected_to sampleapp_url(Sampleapp.last)
  end

  test "should show sampleapp" do
    get sampleapp_url(@sampleapp)
    assert_response :success
  end

  test "should get edit" do
    get edit_sampleapp_url(@sampleapp)
    assert_response :success
  end

  test "should update sampleapp" do
    patch sampleapp_url(@sampleapp), params: { sampleapp: { Address: @sampleapp.Address, Country: @sampleapp.Country, Fname: @sampleapp.Fname, Gender: @sampleapp.Gender, Lname: @sampleapp.Lname } }
    assert_redirected_to sampleapp_url(@sampleapp)
  end

  test "should destroy sampleapp" do
    assert_difference('Sampleapp.count', -1) do
      delete sampleapp_url(@sampleapp)
    end

    assert_redirected_to sampleapps_url
  end
end
