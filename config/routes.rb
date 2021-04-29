Rails.application.routes.draw do
  get 'crud_formularios/index' => 'crud_formularios#index'
  get 'crud_formularios/crear' => 'crud_formularios#crear'
  get 'crud_formularios/actualizar' => 'crud_formularios#actualizar'
  get 'crud_formularios/leer' => 'crud_formularios#leer'
  
  #Administración
  get 'login/admin' => 'vistas_servidor#login'
  get 'index/admin' => 'vistas_servidor#menu'
  post 'login' => 'vistas_servidor#admin'

  #Vista servidor productos
  get 'productos/index' => 'crud_productos#index'
  get 'productos/leer/:id' => 'crud_productos#leer'
  get 'productos/crear'=> 'crud_productos#crear'
  get 'productos/actualizar/:id' => 'crud_productos#actualizar'
  post 'productos/insertar' => 'crud_productos#insertar'
  post 'productos/editar/:id', to: 'crud_productos#editar' 
  post 'productos/eliminar/:id', to: 'crud_productos#eliminar' 

  #Vista servidor eventos
  get 'eventos/index' => 'crud_eventos#index' # Ruta de la vista principal de los registros 
  get 'eventos/leer/:id', to: 'crud_eventos#leer' # Ruta de la vista leer o ver los detalles de un registro 
  get 'eventos/crear' => 'crud_eventos#crear' # Ruta de la vista para crear un registro 
  post 'eventos/insertar' => 'crud_eventos#insertar' # Ruta que procesa la creación de un registro en la base de datos 
  get 'eventos/actualizar/:id', to: 'crud_eventos#actualizar' # Ruta de la vista para actualizar un registro 
  post 'eventos/editar/:id', to: 'crud_eventos#editar' # Ruta que procesa la actualización de un registro en la base de datos 
  post 'eventos/eliminar/:id', to: 'crud_eventos#eliminar' # Ruta para eliminar un registro de la base de datos
  
  #Clientes
  root "vistas_clientes#index"
  get 'index' => 'vistas_clientes#index'
  get 'encargos' => 'vistas_clientes#encargos'
  get 'contacto' => 'vistas_clientes#contacto'

end