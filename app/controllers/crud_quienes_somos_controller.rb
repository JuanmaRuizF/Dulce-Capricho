class CrudQuienesSomosController < ApplicationController

  before_action :require_login
  def require_login
    current_user = User.find_by(:id => session[:current_user_id])
    if !current_user 
      flash[:error] = "Debe iniciar sesión para acceder a este contenido"
      redirect_to '/login/admin'
    end
  end

  @root_url = "/quienes_somos/index"


  def index
    @quienes_somos = QuienesSomo.all()
  end

# Leer los detalles de un registro 
def leer
  @quienes_somos = params[:id]
  @quienes_somos = QuienesSomo.where(id: @quienes_somos)
end

# Llamamos a la vista con el formulario para crear un registro 
def crear
  @quienes_somos = QuienesSomo.new
end

# Procesamos la creación de un registro en la base de datos
def insertar

  # Subimos el Archivo al servidor
  @quienes_somos = QuienesSomo.new(parametros)
  @quienes_somos.save

  # Redireccionamos a la vista principal con mensaje  
  flash[:notice] = "Creado Correctamente !"
  redirect_to "/quienes_somos/index"

end

# Llamamos a la vista con el formulario para actualizar un registro 

def actualizar
  # Pasamos el 'id' del registro a actualizar (método index)   
  @quienes_somos = QuienesSomo.find(params[:id])
  @quienes_somos = QuienesSomo.where(id: @quienes_somos)

end

# Procesamos la actualización de un registro en la base de datos 
def editar

  # Pasamos el 'id' del registro a actualizar (método editar)    
  @quienes_somos = QuienesSomo.find(params[:id])    
  
  # Actualizamos un determinado registro en la base de datos
  if @quienes_somos.update(parametros)   

  else
    render :edit
  end

    # Redireccionamos a la vista principal con mensaje 
    @ini = "/quienes_somos/index"
    flash[:notice] = "Actualizado Correctamente !"
    redirect_to @ini 

end

# Procesamos la eliminación de un registro de la base de datos
def eliminar
  
  # Eliminamos un determinado registro en la base de datos, pasamos el 'id' del registro a eliminar
  @quienes_somos = QuienesSomo.find(params[:id])

  QuienesSomo.where(id: @quienes_somos ).destroy_all    
  
  # Redireccionamos a la vista principal con mensaje 
  @ini = "/quienes_somos/index"
  flash[:notice] = "Eliminado Correctamente !"
  redirect_to @ini 

end

# Parámetros o campos que insertamos o actualizamos en la base de datos 
private
def parametros
  params.permit(:titulo, :descripcion)
end

end

