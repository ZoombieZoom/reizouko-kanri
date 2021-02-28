require 'test_helper'

class ReizoukosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reizoukos_index_url
    assert_response :success
  end

end
