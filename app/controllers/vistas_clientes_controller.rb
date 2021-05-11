class VistasClientesController < ApplicationController
  def index
  end

  def encargos
    @eventos = Evento.all()
    
    @bizcochos = Bizcocho.all()
    @buttercreams = Buttercream.all()
    @galletas = Galletum.all()
    @popcakes = Popcake.all()
    @mesadulces = Mesadulce.all()
  end

  def crearpedido
    @pedidos = Pedido.new(parametrosPedidos)
    @pedidos.save

    # Redireccionamos a la vista principal con mensaje  
    flash[:notice] = "Pedido realizado correctamente"
    redirect_to "/pedidos"
  end

  def formularios
    @formularios = Formulariocontacto.new(parametrosPedidos)
    @formularios.save

    # Redireccionamos a la vista principal con mensaje  
    flash[:notice] = "Formulario enviado"
    redirect_to "/contacto"
  end

  def eventos
    @eventos = Evento.all()
  end
  
  private
  def parametrosPedidos
    params.permit(:nombre, :apellido, :email, :telefono, :domicilio, :CP, :fechaEntrega, :comentario, :tuPedido)
  end


end
