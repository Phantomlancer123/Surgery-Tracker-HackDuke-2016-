require 'test_helper'

class SurgeriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @surgery = surgeries(:one)
  end

  test "should get index" do
    get surgeries_url
    assert_response :success
  end

  test "should get new" do
    get new_surgery_url
    assert_response :success
  end

  test "should create surgery" do
    assert_difference('Surgery.count') do
      post surgeries_url, params: { surgery: { description: @surgery.description, est_length: @surgery.est_length, patient: @surgery.patient, scheduled_time: @surgery.scheduled_time, tracking_id: @surgery.tracking_id } }
    end

    assert_redirected_to surgery_url(Surgery.last)
  end

  test "should show surgery" do
    get surgery_url(@surgery)
    assert_response :success
  end

  test "should get edit" do
    get edit_surgery_url(@surgery)
    assert_response :success
  end

  test "should update surgery" do
    patch surgery_url(@surgery), params: { surgery: { description: @surgery.description, est_length: @surgery.est_length, patient: @surgery.patient, scheduled_time: @surgery.scheduled_time, tracking_id: @surgery.tracking_id } }
    assert_redirected_to surgery_url(@surgery)
  end

  test "should destroy surgery" do
    assert_difference('Surgery.count', -1) do
      delete surgery_url(@surgery)
    end

    assert_redirected_to surgeries_url
  end
end
