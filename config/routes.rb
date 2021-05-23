Rails.application.routes.draw do

  get '/api/v1/login', to: "sessions#create"
  namespace :api do 
    namespace :v1 do 
      resources :rentals
      resources :users do 
        resources :reservations
        resources :trips
      end
      resources :reviews 
    end
  end
  #namespace fetch requests will have api/v1 before each fetch request
  #resources :accounts do 
    #resources :transaction
    #end
    #nested routes, only be able to access transactions through accounts
end

#fetch('http://localhost:3000/api/v1/rentals')
