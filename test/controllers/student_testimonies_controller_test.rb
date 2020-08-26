require 'test_helper'

class StudentTestimoniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_testimony = student_testimonies(:one)
  end

  test "should get index" do
    get student_testimonies_url, as: :json
    assert_response :success
  end

  test "should create student_testimony" do
    assert_difference('StudentTestimony.count') do
      post student_testimonies_url, params: { student_testimony: { email: @student_testimony.email, full_name: @student_testimony.full_name, status: @student_testimony.status, text: @student_testimony.text, type: @student_testimony.type, url: @student_testimony.url } }, as: :json
    end

    assert_response 201
  end

  test "should show student_testimony" do
    get student_testimony_url(@student_testimony), as: :json
    assert_response :success
  end

  test "should update student_testimony" do
    patch student_testimony_url(@student_testimony), params: { student_testimony: { email: @student_testimony.email, full_name: @student_testimony.full_name, status: @student_testimony.status, text: @student_testimony.text, type: @student_testimony.type, url: @student_testimony.url } }, as: :json
    assert_response 200
  end

  test "should destroy student_testimony" do
    assert_difference('StudentTestimony.count', -1) do
      delete student_testimony_url(@student_testimony), as: :json
    end

    assert_response 204
  end
end
