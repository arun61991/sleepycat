Rails.application.routes.draw do
  resources :warehouses
  resources :products
  root 'products#index'
end
