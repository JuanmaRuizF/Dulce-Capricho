require "test_helper"

class CrudProductosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get crud_productos_index_url
    assert_response :success
  end
end
