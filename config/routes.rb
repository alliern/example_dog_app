Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/dogs" => "dogs#index"
    post"/dogs" => "dogs#create"
    get "/dogs/:id" => "dogs#show"

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
  end
end
