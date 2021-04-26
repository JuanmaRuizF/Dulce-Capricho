Rails.application.routes.draw do
  #Vista servidor productos
  get 'productos/index' => 'crud_productos#index'
  get 'productos/leer/:id' => 'crud_productos#leer'
  get 'productos/crear'=> 'crud_productos#crear'
  get 'productos/actualizar/:id' => 'crud_productos#actualizar'
  post 'productos/insertar' => 'crud_productos#insertar'
  post 'productos/editar/:id', to: 'crud_productos#editar' 
  post 'productos/eliminar/:id', to: 'crud_productos#eliminar' 


  #Administración
  get 'login/admin' => 'vistas_servidor#login'
  get 'index/admin' => 'vistas_servidor#menu'
  post 'login' => 'vistas_servidor#admin'


  root "vistas_clientes#index"
  get 'index' => 'vistas_clientes#index'
  get 'encargos' => 'vistas_clientes#encargos'

end