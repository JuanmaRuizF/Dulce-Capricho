require "test_helper"

class CrudFormulariosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get crud_formularios_index_url
    assert_response :success
  end

  test "should get crear" do
    get crud_formularios_crear_url
    assert_response :success
  end

  test "should get actualizar" do
    get crud_formularios_actualizar_url
    assert_response :success
  end

  test "should get leer" do
    get crud_formularios_leer_url
    assert_response :success
  end
end
