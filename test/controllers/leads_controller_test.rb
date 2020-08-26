require 'test_helper'

class LeadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lead = leads(:one)
  end

  test "should get index" do
    get leads_url, as: :json
    assert_response :success
  end

  test "should create lead" do
    assert_difference('Lead.count') do
      post leads_url, params: { lead: { email: @lead.email, full_name: @lead.full_name, profession: @lead.profession, signed_at: @lead.signed_at } }, as: :json
    end

    assert_response 201
  end

  test "should show lead" do
    get lead_url(@lead), as: :json
    assert_response :success
  end

  test "should update lead" do
    patch lead_url(@lead), params: { lead: { email: @lead.email, full_name: @lead.full_name, profession: @lead.profession, signed_at: @lead.signed_at } }, as: :json
    assert_response 200
  end

  test "should destroy lead" do
    assert_difference('Lead.count', -1) do
      delete lead_url(@lead), as: :json
    end

    assert_response 204
  end
end
