class VistasClientesController < ApplicationController
  
  def encargos
    @eventos = Evento.all()
    @bizcochos = Bizcocho.all()
    @buttercreams = Buttercream.all()
    @galletas = Galletum.all()
    @popcakes = Popcake.all()
    @mesadulces = Mesadulce.all()
    @footers = Footer.all()     
  end

  def eventos
    @footers = Footer.all()
    @eventos = Evento.all()
  end

  def crearpedido
    @footers = Footer.all()
    @pedidos = Pedido.new(parametrosPedidos)
    @pedidos.save

    # Redireccionamos a la vista principal con mensaje  
    flash[:notice] = "Pedido realizado correctamente"
    redirect_to "/pedidos"
  end

  def index
    @preguntasfrecuentes = Preguntasfrecuente.all()
    @footers = Footer.all()
  end
  
  def halloween
    @footers = Footer.all()
  end

  def navidad
    @footers = Footer.all()
  end

  def galeria
    @footers = Footer.all()
    @galeria = Galerium.all() 
  end

  def contacto   
    @footers = Footer.all()
  end


  def politica_y_condiciones
    @footers = Footer.all()
    @alergenos = Alergeno.all()
    @politicas = Politica.all()
  end

  def formularios
    @footers = Footer.all()
    @formularios = Formulariocontacto.new(parametrosPedidos)
    @formularios.save

    # Redireccionamos a la vista principal con mensaje  
    flash[:notice] = "Formulario enviado"
    redirect_to "/contacto"
  end

  private
  def parametrosPedidos
    params.permit(:nombre, :apellido, :email, :telefono, :domicilio, :CP, :fechaEntrega, :comentario, :tuPedido)
  end

end
