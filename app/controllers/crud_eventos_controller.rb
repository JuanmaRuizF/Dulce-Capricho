class CrudEventosController < ApplicationController
  
  before_action :require_login
  def require_login
    current_user = User.find_by(:id => session[:current_user_id])
    if !current_user 
      flash[:error] = "Debe iniciar sesión para acceder a este contenido"
      redirect_to '/login/admin'
    end
  end

  @root_url = "/eventos/index"

  #layout 'aplication'

  add_flash_types :notice

  #Listar todos los registros de la BD
  def index
    @eventos = Evento.all()
  end

  #Leer los detalles de un registro
  def leer
    @eventos = params[:id]
    @eventos = Evento.where(id: @eventos)
  end

  #Llamamos a la vista con el formulario para crear un registro
  def crear
    @eventos = Evento.new
  end

  #Procesamos la creación de un registro en la base de datos
  def insertar
    
    # Subimos el Archivo al servidor
    uploaded_file = params[:img1]
    name1 = 'eventos/'+ Time.now.to_i.to_s + '_1' + uploaded_file.original_filename
    File.open(Rails.root.join('app', 'assets/images', name1), 'wb') do |file|
        file.write(uploaded_file.read)
    end

    # Subimos el Archivo al servidor
    uploaded_file = params[:img2]
    name2 = 'eventos/'+ Time.now.to_i.to_s + '_2' + uploaded_file.original_filename
    File.open(Rails.root.join('app', 'assets/images', name2), 'wb') do |file|
        file.write(uploaded_file.read)
    end

    # Subimos el Archivo al servidor
    uploaded_file = params[:img3]
    name3 = 'eventos/'+ Time.now.to_i.to_s + '_3' + uploaded_file.original_filename
    File.open(Rails.root.join('app', 'assets/images', name3), 'wb') do |file|
        file.write(uploaded_file.read)
    end
  	
  	@eventos = Evento.new(parametros)
 
  	# Insertamos un registro en la base de datos
    if @eventos.save
      
      @eventos.update_column(:img1, name1)
      @eventos.update_column(:img2, name2)
      @eventos.update_column(:img3, name3)
  		
  	else
  		render :new
  	end
 
    # Redireccionamos a la vista principal con mensaje 
    @ini = "/eventos/index"
    flash[:notice] = "Creado Correctamente !"
    redirect_to @ini 
  end

  #Llamamos a la vista con el formulatio para actualizar un registro
  def actualizar
    #Pasamos el 'id' del registro a actualizar
    @eventos = Evento.find(params[:id])
    @eventos = Evento.where(id: @eventos)
  end

  # Procesamos la actualización de un registro en la base de datos 
  def editar
 
    # Pasamos el 'id' del registro a actualizar (método editar)    
    @eventos = Evento.find(params[:id])    
 

    if params[:img1].present?
      uploaded_file = params[:img1]
 
      # Eliminamos el archivo (imagen) anterior 
      simg = Evento.where(:id => @eventos).pluck(:img1)    
      imgeliminar = Rails.root.join('app', 'assets/images', simg.join)
      File.delete(Rails.root + imgeliminar) if File.exist?(imgeliminar)
 
      # Subimos el nuevo archivo (imagen)
      name1 = 'eventos/'+ Time.now.to_i.to_s + '_1' + uploaded_file.original_filename
      File.open(Rails.root.join('app', 'assets/images', name1), 'wb') do |file|
          file.write(uploaded_file.read)
      end
    end  

    if params[:img2].present?
      uploaded_file = params[:img2]
 
      # Eliminamos el archivo (imagen) anterior 
      simg = Evento.where(:id => @eventos).pluck(:img2)    
      imgeliminar = Rails.root.join('app', 'assets/images', simg.join)
      File.delete(Rails.root + imgeliminar) if File.exist?(imgeliminar)
 
      # Subimos el nuevo archivo (imagen) 
      name2 = 'eventos/'+ Time.now.to_i.to_s + '_2' + uploaded_file.original_filename
      File.open(Rails.root.join('app', 'assets/images', name2), 'wb') do |file|
          file.write(uploaded_file.read)
      end
    end  

    if params[:img3].present?
      uploaded_file = params[:img3]
 
      # Eliminamos el archivo (imagen) anterior 
      simg = Evento.where(:id => @eventos).pluck(:img3)    
      imgeliminar = Rails.root.join('app', 'assets/images', simg.join)
      File.delete(Rails.root + imgeliminar) if File.exist?(imgeliminar)
 
      # Subimos el nuevo archivo (imagen) 
      name3 = 'eventos/'+ Time.now.to_i.to_s + '_3' + uploaded_file.original_filename
      File.open(Rails.root.join('app', 'assets/images', name3), 'wb') do |file|
          file.write(uploaded_file.read)
      end
    end 
    
    # Actualizamos un determinado registro en la base de datos
    if @eventos.update(parametros)
      
      # Actualizamos las columnas 'img' de la base de datos
      if params[:img1].present?
        @eventos.update_column(:img1, name1)
      end   
      if params[:img2].present?
        @eventos.update_column(:img2, name2)
      end
      if params[:img3].present?
        @eventos.update_column(:img3, name3)
      end       
 
    else
      render :edit
    end
 
      # Redireccionamos a la vista principal con mensaje 
      @ini = "/eventos/index"
      flash[:notice] = "Actualizado Correctamente !"
      redirect_to @ini 
 
  end
 
  # Procesamos la eliminación de un registro de la base de datos
  def eliminar
    
    # Eliminamos un determinado registro en la base de datos, pasamos el 'id' del registro a eliminar
    @eventos = Evento.find(params[:id])
 
    # Eliminamos las imagenes pertenecientes al registro 
    simg = Evento.where(:id => @eventos).pluck(:img1)    
    imgeliminar = Rails.root.join('app', 'assets/images', simg.join)
    File.delete(Rails.root + imgeliminar) if File.exist?(imgeliminar)

    simg = Evento.where(:id => @eventos).pluck(:img2)    
    imgeliminar = Rails.root.join('app', 'assets/images', simg.join)
    File.delete(Rails.root + imgeliminar) if File.exist?(imgeliminar)

    simg = Evento.where(:id => @eventos).pluck(:img3)    
    imgeliminar = Rails.root.join('app', 'assets/images', simg.join)
    File.delete(Rails.root + imgeliminar) if File.exist?(imgeliminar)
 
    Evento.where(id: @eventos ).destroy_all    
    
    # Redireccionamos a la vista principal con mensaje 
    @ini = "/eventos/index"
    flash[:notice] = "Eliminado Correctamente !"
    redirect_to @ini 
 
  end
 
  # Parámetros o campos que insertamos o actualizamos en la base de datos 
  private
  def parametros
  	params.permit(:nombre, :descripcion, :img1, :img2, :img3)
  end
 
end

