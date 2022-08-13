Rails.application.routes.draw do
  resources :brands
  get 'dashboard/index'
  resources :sellers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "dashboard#index"
end
