class CrudPreguntasFrecuentesController < ApplicationController

  before_action :require_login
  def require_login

    current_user = User.find_by(:id => session[:current_user_id])
    if !current_user 
      flash[:error] = "Debe iniciar sesión para acceder a este contenido"
      redirect_to '/login/admin'
    end
  end

  @root_url = "/crud_preguntas_frecuentes/index"
  
  # layout 'application'
  
  add_flash_types :notice

  # Listar todos los registros de la Base de Datos 
  def index
    @preguntasfrecuentes = Preguntasfrecuente.all()
  end
  
  # Leer los detalles de un registro 
  def leer
    @preguntasfrecuentes = params[:id]
    @preguntasfrecuentes = Preguntasfrecuente.where(id: @preguntasfrecuentes)
  end
  
  # Llamamos a la vista con el formulario para crear un registro 
  def crear
    @preguntasfrecuentes = Preguntasfrecuente.new
  end
  
  # Procesamos la creación de un registro en la base de datos
  def insertar
  
    # Subimos el Archivo al servidor
    @preguntasfrecuentes = Preguntasfrecuente.new(parametros)
    @preguntasfrecuentes.save

    # Redireccionamos a la vista principal con mensaje  
    flash[:notice] = "Creado Correctamente !"
    redirect_to "/crud_preguntas_frecuentes/index"
  
  end
  
  # Llamamos a la vista con el formulario para actualizar un registro 
  
  def actualizar
    # Pasamos el 'id' del registro a actualizar (método index)   
    @preguntasfrecuentes = Preguntasfrecuente.find(params[:id])
    @preguntasfrecuentes = Preguntasfrecuente.where(id: @preguntasfrecuentes)
  
  end
  
  # Procesamos la actualización de un registro en la base de datos 
  def editar
  
    # Pasamos el 'id' del registro a actualizar (método editar)    
    @preguntasfrecuentes = Preguntasfrecuente.find(params[:id])    
    
    # Actualizamos un determinado registro en la base de datos
    if @preguntasfrecuentes.update(parametros)   
  
    else
      render :edit
    end
  
      # Redireccionamos a la vista principal con mensaje 
      @ini = "/crud_preguntas_frecuentes/index"
      flash[:notice] = "Actualizado Correctamente !"
      redirect_to @ini 
  
  end
  
  # Procesamos la eliminación de un registro de la base de datos
  def eliminar
    
    # Eliminamos un determinado registro en la base de datos, pasamos el 'id' del registro a eliminar
    @preguntasfrecuentes = Preguntasfrecuente.find(params[:id])
  
    Preguntasfrecuente.where(id: @preguntasfrecuentes ).destroy_all    
    
    # Redireccionamos a la vista principal con mensaje 
    @ini = "/crud_preguntas_frecuentes/index"
    flash[:notice] = "Eliminado Correctamente !"
    redirect_to @ini 
  
  end
  
  # Parámetros o campos que insertamos o actualizamos en la base de datos 
  private
  def parametros
    params.permit(:titulo, :descripcion)
  end
  
end

