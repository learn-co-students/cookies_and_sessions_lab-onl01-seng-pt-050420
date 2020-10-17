Rails.application.routes.draw do
  resources :application
  resources :products

  get '/', to: 'products#index'
  post '/add_to_cart', to: 'products#add_to_cart'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
