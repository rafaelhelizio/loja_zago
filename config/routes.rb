Rails.application.routes.draw do
  resources :departamentos
  root to:'produtos#index'
  resources :produtos, only: [:create, :new, :destroy, :edit, :update]
  get "produtos/busca", to: "produtos#busca", as: :busca_produto
end
