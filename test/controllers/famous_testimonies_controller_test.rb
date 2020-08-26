require 'test_helper'

class FamousTestimoniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @famous_testimony = famous_testimonies(:one)
  end

  test "should get index" do
    get famous_testimonies_url, as: :json
    assert_response :success
  end

  test "should create famous_testimony" do
    assert_difference('FamousTestimony.count') do
      post famous_testimonies_url, params: { famous_testimony: { enabled: @famous_testimony.enabled, full_name: @famous_testimony.full_name, url: @famous_testimony.url } }, as: :json
    end

    assert_response 201
  end

  test "should show famous_testimony" do
    get famous_testimony_url(@famous_testimony), as: :json
    assert_response :success
  end

  test "should update famous_testimony" do
    patch famous_testimony_url(@famous_testimony), params: { famous_testimony: { enabled: @famous_testimony.enabled, full_name: @famous_testimony.full_name, url: @famous_testimony.url } }, as: :json
    assert_response 200
  end

  test "should destroy famous_testimony" do
    assert_difference('FamousTestimony.count', -1) do
      delete famous_testimony_url(@famous_testimony), as: :json
    end

    assert_response 204
  end
end
