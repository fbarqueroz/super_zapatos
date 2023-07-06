Rails.application.routes.draw do
  # Defines the root path route ("/")
  # root "articles#index"
  resources :article
  resources :store
end