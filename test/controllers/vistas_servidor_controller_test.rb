require "test_helper"

class VistasServidorControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get vistas_servidor_login_url
    assert_response :success
  end

  test "should get menu" do
    get vistas_servidor_menu_url
    assert_response :success
  end
end
