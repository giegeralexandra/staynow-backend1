Rails.application.routes.draw do

  # get '/api/v1/login', to: "api/v1/sessions#create"
  post '/api/v1/login', to: "api/v1/sessions#create"
  delete '/api/v1/logout', to: "api/v1/sessions#destroy"
  get '/api/v1/login', to: "api/v1/sessions#show"

  namespace :api do 
    namespace :v1 do 
      resources :rentals
      resources :reservations
      resources :rentals
      resources :trips
      resources :reviews 
      resources :users 
    end
  end
  #namespace fetch requests will have api/v1 before each fetch request
  #resources :accounts do 
    #resources :transaction
    #end
    #nested routes, only be able to access transactions through accounts
end

#fetch('http://localhost:3000/api/v1/rentals')
