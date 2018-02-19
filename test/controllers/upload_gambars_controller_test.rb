require 'test_helper'

class UploadGambarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @upload_gambar = upload_gambars(:one)
  end

  test "should get index" do
    get upload_gambars_url
    assert_response :success
  end

  test "should get new" do
    get new_upload_gambar_url
    assert_response :success
  end

  test "should create upload_gambar" do
    assert_difference('UploadGambar.count') do
      post upload_gambars_url, params: { upload_gambar: { image_url: @upload_gambar.image_url, title: @upload_gambar.title } }
    end

    assert_redirected_to upload_gambar_url(UploadGambar.last)
  end

  test "should show upload_gambar" do
    get upload_gambar_url(@upload_gambar)
    assert_response :success
  end

  test "should get edit" do
    get edit_upload_gambar_url(@upload_gambar)
    assert_response :success
  end

  test "should update upload_gambar" do
    patch upload_gambar_url(@upload_gambar), params: { upload_gambar: { image_url: @upload_gambar.image_url, title: @upload_gambar.title } }
    assert_redirected_to upload_gambar_url(@upload_gambar)
  end

  test "should destroy upload_gambar" do
    assert_difference('UploadGambar.count', -1) do
      delete upload_gambar_url(@upload_gambar)
    end

    assert_redirected_to upload_gambars_url
  end
end
