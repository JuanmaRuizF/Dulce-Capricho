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

end
