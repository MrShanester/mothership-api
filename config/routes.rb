Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # user routes
  post "/users" => "users#create"

  # session routes
  post "/sessions" => "sessions#create"

  # characters routes
  get "/characters" => "characters#download"
end
