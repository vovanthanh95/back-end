require 'test_helper'

class WeddingDressesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wedding_dresses_index_url
    assert_response :success
  end

  test "should get show" do
    get wedding_dresses_show_url
    assert_response :success
  end

end
