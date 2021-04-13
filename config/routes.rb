Rails.application.routes.draw do
  root "vistas_clientes#index"

  get "/vistas_clientes", to: "vistas_clientes#index"
end