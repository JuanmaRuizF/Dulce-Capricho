require "test_helper"

class CrudFootersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get crud_footers_index_url
    assert_response :success
  end

  test "should get crear" do
    get crud_footers_crear_url
    assert_response :success
  end

  test "should get actualizar" do
    get crud_footers_actualizar_url
    assert_response :success
  end

  test "should get leer" do
    get crud_footers_leer_url
    assert_response :success
  end
end
