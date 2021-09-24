Rails.application.routes.draw do
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :propeties, only: [:show, :new, :create]
  resources :property_types
end
