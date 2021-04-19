Rails.application.routes.draw do
  #Administración
  get 'login/admin' => 'vistas_servidor#login'
  get 'index/admin' => 'vistas_servidor#menu'
  post 'login' => 'vistas_servidor#admin'


  root "vistas_clientes#index"
  get 'index' => 'vistas_clientes#index'
end