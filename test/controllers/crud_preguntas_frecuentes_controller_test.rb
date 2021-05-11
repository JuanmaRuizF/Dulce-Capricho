require "test_helper"

class CrudPreguntasFrecuentesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get crud_preguntas_frecuentes_index_url
    assert_response :success
  end

  test "should get crear" do
    get crud_preguntas_frecuentes_crear_url
    assert_response :success
  end

  test "should get actualizar" do
    get crud_preguntas_frecuentes_actualizar_url
    assert_response :success
  end

  test "should get leer" do
    get crud_preguntas_frecuentes_leer_url
    assert_response :success
  end
end
