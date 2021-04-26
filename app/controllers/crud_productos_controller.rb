class CrudProductosController < ApplicationController
 
  before_action :require_login
  def require_login
    current_user = User.find_by(:id => session[:current_user_id])
    if !current_user 
      flash[:error] = "Debe iniciar sesión para acceder a este contenido"
      redirect_to '/login/admin'
    end
  end

  def index
      @bizcochos = Bizcocho.all()
      @buttercreams = Buttercream.all()
      @galletas = Galletum.all()
      @popcakes = Popcake.all()
      @mesadulces = Mesadulce.all()
      @listas = [@bizcochos, @buttercreams, @galletas, @popcakes, @mesadulces]
  end

  def insertar
      @insertar = params[:nombreInput]
      @nuevo
      case @insertar
      when "0"
          @nuevo = Bizcocho.new(params.permit(:nombre))
          @nuevo.save 
      when "1"
          @nuevo = Buttercream.new(params.permit(:nombre))
          @nuevo.save   
      when "2"
          @nuevo = Galletum.new(params.permit(:nombre))
          @nuevo.save   
      when "3"
          @nuevo = Popcake.new(params.permit(:nombre))
          @nuevo.save      
      when "4"
          @nuevo = Mesadulce.new(params.permit(:nombre))
          @nuevo.save      
      else 
          flash[:notice] = "Error !"
      end

      flash[:notice] = "Creado Correctamente !"
      redirect_to "/productos/index"
  end

  def editar
      @retu ='/productos/index'
      @editar = params[:nombreInput]
      case @editar
          when "0" 
              @nuevo = Bizcocho.find(params[:id])
              @nuevo.update(params.permit(:nombre))
              
          when "1"
              @nuevo = Buttercream.find(params[:id])
              @nuevo.update(params.permit(:nombre))
              
          when "2"
              @nuevo = Galletum.find(params[:id])
              @nuevo.update(params.permit(:nombre))
                  
          when "3"
              @nuevo = Popcake.find(params[:id])
              @nuevo.update(params.permit(:nombre)) 

          when "4"
              @nuevo = Mesadulce.find(params[:id])
              @nuevo.update(params.permit(:nombre))
              
          end
          
          flash[:notice] = "Actualizado correctamente!"
          redirect_to @retu
  end

  def eliminar
      @retu ='/productos/index'
      @eliminar = params[:nombreInput]
      case @eliminar
          when "0" 
              @nuevo = Bizcocho.find(params[:id])
              Bizcocho.where(id: @nuevo).destroy_all
              
          when "1"
              @nuevo = Buttercream.find(params[:id])
              Buttercream.where(id: @nuevo).destroy_all
              
          when "2"
              @nuevo = Galletum.find(params[:id])
              Galletum.where(id: @nuevo).destroy_all
          
          when "3"
              @nuevo = Popcake.find(params[:id])
              Popcake.where(id: @nuevo).destroy_all
              
          when "4"
              @nuevo = Mesadulce.find(params[:id])
              Mesadulce.where(id: @nuevo).destroy_all
              
  end
      flash[:notice] = "Eliminado correctamente!"
      redirect_to @retu
  end
end 