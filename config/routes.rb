Rails.application.routes.draw do
  #Administración
  get 'login/admin' => 'vistas_servidor#login'
  get 'index/admin' => 'vistas_servidor#menu'


  root "vistas_clientes#index"
  get 'index' => 'vistas_clientes#index'
end