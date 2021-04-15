Rails.application.routes.draw do
  get 'vistas_servidor/login'
  get 'vistas_servidor/menu', to: 'vistas_servidor#menu'
  root "vistas_clientes#index"

  get "/vistas_clientes", to: "vistas_clientes#index"
end