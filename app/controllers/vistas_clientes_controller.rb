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

  def pedidos
    @pedidos = Pedido.new(parametrosPedidos)
    @pedidos.save

    # Redireccionamos a la vista principal con mensaje  
    flash[:notice] = "Pedido realizado correctamente"
    #redirect_to "/pedidos"
  end

  private
  def parametrosPedidos
    params.permit(:nombre, :apellido, :email, :telefono, :domicilio, :CP, :fechaEntrega, :comentario, :tuPedido)
  end
end
