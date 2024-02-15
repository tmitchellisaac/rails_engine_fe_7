Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "welcome#index"

  # resources :search
  resources :merchants, only: [:index, :show] do
    get "find", on: :collection
  end

end
