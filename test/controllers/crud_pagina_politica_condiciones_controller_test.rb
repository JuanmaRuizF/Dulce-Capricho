require "test_helper"

class CrudPaginaPoliticaCondicionesControllerTest < ActionDispatch::IntegrationTest
  test "should get crud_alergenos" do
    get crud_pagina_politica_condiciones_crud_alergenos_url
    assert_response :success
  end

  test "should get crud_politica_condiciones" do
    get crud_pagina_politica_condiciones_crud_politica_condiciones_url
    assert_response :success
  end
end
