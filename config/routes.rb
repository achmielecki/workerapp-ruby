Rails.application.routes.draw do
  resources :dyrektors
  resources :magazyniers
  resources :magazyns
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "magazyns#index"
end
