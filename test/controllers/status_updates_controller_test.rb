require 'test_helper'

class StatusUpdatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @status_update = status_updates(:one)
  end

  test "should get index" do
    get status_updates_url
    assert_response :success
  end

  test "should get new" do
    get new_status_update_url
    assert_response :success
  end

  test "should create status_update" do
    assert_difference('StatusUpdate.count') do
      post status_updates_url, params: { status_update: { message: @status_update.message, progress: @status_update.progress, surgery_id: @status_update.surgery_id } }
    end

    assert_redirected_to status_update_url(StatusUpdate.last)
  end

  test "should show status_update" do
    get status_update_url(@status_update)
    assert_response :success
  end

  test "should get edit" do
    get edit_status_update_url(@status_update)
    assert_response :success
  end

  test "should update status_update" do
    patch status_update_url(@status_update), params: { status_update: { message: @status_update.message, progress: @status_update.progress, surgery_id: @status_update.surgery_id } }
    assert_redirected_to status_update_url(@status_update)
  end

  test "should destroy status_update" do
    assert_difference('StatusUpdate.count', -1) do
      delete status_update_url(@status_update)
    end

    assert_redirected_to status_updates_url
  end
end
