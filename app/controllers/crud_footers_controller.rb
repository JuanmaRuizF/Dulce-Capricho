 class CrudFootersController < ApplicationController
  

#     before_action :require_login
#     def require_login
  
#       current_user = User.find_by(:id => session[:current_user_id])
#       if !current_user 
#         flash[:error] = "Debe iniciar sesión para acceder a este contenido"
#         redirect_to '/login/admin'
#       end
#     end
  
#     @root_url = "/crud_footers/index"
    
#     # layout 'application'
    
#     add_flash_types :notice
  
#     # Listar todos los registros de la Base de Datos 
#     def index
#       @footers = Footer.all()
#     end
    
#     # Leer los detalles de un registro 
#     def leer
#       @footers = params[:id]
#       @footers = Footer.where(id: @footers)
#     end
    
#     # Llamamos a la vista con el formulario para crear un registro 
#     def crear
#       @footers = Footer.new
#     end
    
#     # Procesamos la creación de un registro en la base de datos
#     def insertar
    
#       # Subimos el Archivo al servidor
#       @footers = Footer.new(parametros)
#       @footers.save
  
#       # Redireccionamos a la vista principal con mensaje  
#       flash[:notice] = "Creado Correctamente !"
#       redirect_to "/crud_footers/index"
    
#     end
    
#     # Llamamos a la vista con el formulario para actualizar un registro 
    
#     def actualizar
#       # Pasamos el 'id' del registro a actualizar (método index)   
#       @footers = Footer.find(params[:id])
#       @footers = Footer.where(id: @footers)
    
#     end
    
#     # Procesamos la actualización de un registro en la base de datos 
#     def editar
    
#       # Pasamos el 'id' del registro a actualizar (método editar)    
#       @footers = Footer.find(params[:id])    
      
#       # Actualizamos un determinado registro en la base de datos
#       puts @footers.update(parametros)  
#       if @footers.update(parametros)   
    
#       else
#         render :edit
#       end
    
#         # Redireccionamos a la vista principal con mensaje 
#         @ini = "/crud_footers/index"
#         flash[:notice] = "Actualizado Correctamente !"
#         redirect_to @ini 
    
#     end
    
#     # Procesamos la eliminación de un registro de la base de datos
#     def eliminar
      
#       # Eliminamos un determinado registro en la base de datos, pasamos el 'id' del registro a eliminar
#       @footers = Footer.find(params[:id])
    
#       Footer.where(id: @footers ).destroy_all    
      
#       # Redireccionamos a la vista principal con mensaje 
#       @ini = "/crud_footers/index"
#       flash[:notice] = "Eliminado Correctamente !"
#       redirect_to @ini 
    
#     end
    
#     # Parámetros o campos que insertamos o actualizamos en la base de datos 
#     private
#     def parametros
#       params.permit(:nombreizda, :enlaceizda, :nombremedio, :nombredcha, :enlacedcha)
#     end
    
#   end
  

  before_action :require_login
  def require_login
    current_user = User.find_by(:id => session[:current_user_id])
    if !current_user 
      flash[:error] = "Debe iniciar sesión para acceder a este contenido"
      redirect_to '/login/admin'
    end
  end

  @root_url = "/crud_footers/index"
  
  # layout 'application'
  
  add_flash_types :notice

  # Listar todos los registros de la Base de Datos 
  def index
    @footers = Footer.all()
  end
  
  # Leer los detalles de un registro 
  def leer
    @footers = params[:id]
    @footers = Footer.where(id: @footers)
  end
  
  # Llamamos a la vista con el formulario para crear un registro 
  def crear
    @footers = Footer.new
  end
  
  # Procesamos la creación de un registro en la base de datos
  def insertar
  
    # Subimos el Archivo al servidor
    @footers = Footer.new(parametros)
    @footers.save

    # Redireccionamos a la vista principal con mensaje  
    flash[:notice] = "Creado Correctamente !"
    redirect_to "/crud_footers/index"
  
  end
  
  # Llamamos a la vista con el formulario para actualizar un registro 
  
  def actualizar
    # Pasamos el 'id' del registro a actualizar (método index)   
    @footers = Footer.find(params[:id])
    @footers = Footer.where(id: @footers)
  
  end
  
  # Procesamos la actualización de un registro en la base de datos 
  def editar
  
    # Pasamos el 'id' del registro a actualizar (método editar)    
    @footers = Footer.find(params[:id])    
    
    # Actualizamos un determinado registro en la base de datos
    if @footers.update(parametros)   
  
    else
      render :edit
    end
  
      # Redireccionamos a la vista principal con mensaje 
      @ini = "/crud_footers/index"
      flash[:notice] = "Actualizado Correctamente !"
      redirect_to @ini 
  
  end
  
  # Procesamos la eliminación de un registro de la base de datos
  def eliminar
    
    # Eliminamos un determinado registro en la base de datos, pasamos el 'id' del registro a eliminar
    @footers = Footer.find(params[:id])
  
    Footer.where(id: @footers ).destroy_all    
    
    # Redireccionamos a la vista principal con mensaje 
    @ini = "/crud_footers/index"
    flash[:notice] = "Eliminado Correctamente !"
    redirect_to @ini 
  
  end
  
  # Parámetros o campos que insertamos o actualizamos en la base de datos 
  private
  def parametros
    params.permit(:nombreizda, :enlaceizda, :nombremedio, :nombredcha, :enlacedcha)
  end
  
  end
