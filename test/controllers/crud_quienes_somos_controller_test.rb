require "test_helper"

class CrudQuienesSomosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get crud_quienes_somos_index_url
    assert_response :success
  end

  test "should get actualizar" do
    get crud_quienes_somos_actualizar_url
    assert_response :success
  end

  test "should get leer" do
    get crud_quienes_somos_leer_url
    assert_response :success
  end
end
