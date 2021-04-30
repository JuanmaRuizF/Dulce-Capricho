class CrudFormulariosController < ApplicationController
 
  before_action :require_login
  def require_login
    current_user = User.find_by(:id => session[:current_user_id])
    if !current_user 
      flash[:error] = "Debe iniciar sesión para acceder a este contenido"
      redirect_to '/login/admin'
    end
  end

  @root_url = "/formularios/index"
  
  # layout 'application'
  
  add_flash_types :notice

  # Listar todos los registros de la Base de Datos 
  def index
    @formularios = Formulariocontacto.all()
  end
  
  # Leer los detalles de un registro 
  def leer
    @formularios = params[:id]
    @formularios = Formulariocontacto.where(id: @formularios)
  end
  
  # Llamamos a la vista con el formulario para crear un registro 
  def crear
    @formularios = Formulariocontacto.new
  end
  
  # Procesamos la creación de un registro en la base de datos
  def insertar
  
    # Subimos el Archivo al servidor
    @formularios = Formulariocontacto.new(parametros)
    @formularios.save

    # Redireccionamos a la vista principal con mensaje  
    flash[:notice] = "Creado Correctamente !"
    redirect_to "/formularios/index"
  
  end
  
  # Llamamos a la vista con el formulario para actualizar un registro 
  
  def actualizar
    # Pasamos el 'id' del registro a actualizar (método index)   
    @formularios = Formulariocontacto.find(params[:id])
    @formularios = Formulariocontacto.where(id: @formularios)
  
  end
  
  # Procesamos la actualización de un registro en la base de datos 
  def editar
  
    # Pasamos el 'id' del registro a actualizar (método editar)    
    @formularios = Formulariocontacto.find(params[:id])    
    
    # Actualizamos un determinado registro en la base de datos
    if @formularios.update(parametros)   
  
    else
      render :edit
    end
  
      # Redireccionamos a la vista principal con mensaje 
      @ini = "/formularios/index"
      flash[:notice] = "Actualizado Correctamente !"
      redirect_to @ini 
  
  end
  
  # Procesamos la eliminación de un registro de la base de datos
  def eliminar
    
    # Eliminamos un determinado registro en la base de datos, pasamos el 'id' del registro a eliminar
    @formularios = Formulariocontacto.find(params[:id])
  
    Formulariocontacto.where(id: @formularios ).destroy_all    
    
    # Redireccionamos a la vista principal con mensaje 
    @ini = "/formularios/index"
    flash[:notice] = "Eliminado Correctamente !"
    redirect_to @ini 
  
  end
  
  # Parámetros o campos que insertamos o actualizamos en la base de datos 
  private
  def parametros
    params.permit(:nombre, :apellido, :email, :telefono, :comentario)
  end
  
end
