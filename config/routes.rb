Rails.application.routes.draw do

  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # Read all
  get "/restaurants", to: "restaurants#index"

  # Create
  get "/restaurants/new", to: "restaurants#new"
  post "/restaurants", to:"restaurants#create"

   # Read one - The `show` route needs to be *after* `new` route.
  get "/restaurants/:id", to: "restaurants#show", as: :restaurant

   # Update
  get "restaurants/:id/edit", to: "restaurants#edit"
  patch "restaurants/:id", to: "restaurants#update"

   # Delete
  delete "restaurants/:id", to: "restaurants#destroy"

  # resources :restaurants, only: [:index, :show]
  # resources :restaurants
end
