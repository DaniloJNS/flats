Rails.application.routes.draw do
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :properties, only: [:show, :new, :create]
  resources :property_types, only: [:new, :create, :show]
  resources :property_locations, only: [:new, :create, :show]
  
end
