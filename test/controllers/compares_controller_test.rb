require 'test_helper'

class ComparesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get compares_show_url
    assert_response :success
  end

  test "should get index" do
    get compares_index_url
    assert_response :success
  end

end
