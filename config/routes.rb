Rails.application.routes.draw do
  
 

 

  get 'crud_footers/index'
  get 'crud_footers/crear'
  get 'crud_footers/actualizar'
  get 'crud_footers/leer'
  get 'formularios/index' => 'crud_formularios#index'
  get 'formularios/crear' => 'crud_formularios#crear'
  get 'formularios/actualizar/:id' => 'crud_formularios#actualizar'
  get 'formularios/leer/:id' => 'crud_formularios#leer'
  post 'formularios/insertar' => 'crud_formularios#insertar'
  post 'formularios/editar/:id', to: 'crud_formularios#editar' 
  post 'formularios/eliminar/:id', to: 'crud_formularios#eliminar' 
  
#Preguntas frecuentes
get 'crud_preguntas_frecuentes/index' => 'crud_preguntas_frecuentes#index'
get 'crud_preguntas_frecuentes/crear' => 'crud_preguntas_frecuentes#crear'
get 'crud_preguntas_frecuentes/actualizar/:id' => 'crud_preguntas_frecuentes#actualizar'
get 'crud_preguntas_frecuentes/leer/:id' => 'crud_preguntas_frecuentes#leer'
post 'crud_preguntas_frecuentes/insertar', to: 'crud_preguntas_frecuentes#insertar'
post 'crud_preguntas_frecuentes/actualizar/:id', to: 'crud_preguntas_frecuentes#actualizar'
post 'crud_preguntas_frecuentes/eliminar/:id', to: 'crud_preguntas_frecuentes#eliminar'


 #Política y Condiciones - Menú y sub apartados
 get 'crud_pagina_politica_condiciones/menu_pagina_politica_condiciones' => 'crud_pagina_politica_condiciones#menu_pagina_politica_condiciones'
 get 'crud_pagina_politica_condiciones/crud_alergenos' => 'crud_pagina_politica_condiciones#crud_alergenos'
 get 'crud_pagina_politica_condiciones/crud_politica_condiciones' => 'crud_pagina_politica_condiciones#crud_politica_condiciones'

  #Administración
  get 'login/admin' => 'vistas_servidor#login'
  get 'index/admin' => 'vistas_servidor#menu'
  post 'login' => 'vistas_servidor#admin'
  get 'logout' => 'vistas_servidor#destroy'

  #Vista servidor productos
  get 'productos/index' => 'crud_productos#index'
  post 'productos/insertar' => 'crud_productos#insertar'
  post 'productos/editar/:id' => 'crud_productos#editar'
  post 'productos/eliminar/:id' => 'crud_productos#eliminar'

  #Vista servidor eventos
  get 'eventos/index' => 'crud_eventos#index' # Ruta de la vista principal de los registros 
  get 'eventos/leer/:id', to: 'crud_eventos#leer' # Ruta de la vista leer o ver los detalles de un registro 
  get 'eventos/crear' => 'crud_eventos#crear' # Ruta de la vista para crear un registro 
  post 'eventos/insertar' => 'crud_eventos#insertar' # Ruta que procesa la creación de un registro en la base de datos 
  get 'eventos/actualizar/:id', to: 'crud_eventos#actualizar' # Ruta de la vista para actualizar un registro 
  post 'eventos/editar/:id', to: 'crud_eventos#editar' # Ruta que procesa la actualización de un registro en la base de datos 
  post 'eventos/eliminar/:id', to: 'crud_eventos#eliminar' # Ruta para eliminar un registro de la base de datos
  



  #Vista servidor pedidos
  get 'pedidos/index' => 'crud_pedidos#index'
  get 'pedidos/leer/:id' => 'crud_pedidos#leer'
  get 'pedidos/crear'=> 'crud_pedidos#crear'
  get 'pedidos/actualizar/:id' => 'crud_pedidos#actualizar'
  post 'pedidos/insertar' => 'crud_pedidos#insertar'
  post 'pedidos/editar/:id', to: 'crud_pedidos#editar' 
  post 'pedidos/eliminar/:id', to: 'crud_pedidos#eliminar' 


  #Clientes
  root "vistas_clientes#index"
  get 'index' => 'vistas_clientes#index'
  get 'encargos' => 'vistas_clientes#encargos'
  get 'contacto' => 'vistas_clientes#contacto'
  get 'pedidos' => 'vistas_clientes#pedidos'
  post 'crearpedido' => 'vistas_clientes#crearpedido'
  post 'formularios' => 'vistas_clientes#formularios' 
  get 'politica_y_condiciones' => 'vistas_clientes#politica_y_condiciones'
  get 'navidad' => 'vistas_clientes#navidad'
  get 'halloween' => 'vistas_clientes#halloween'
  get 'galeria' => 'vistas_clientes#galeria'
  get 'quienes_somos' => 'vistas_clientes#quienes_somos'
  get 'eventos' => 'vistas_clientes#eventos'
end