Rails.application.routes.draw do

  namespace :api do 
    namespace :v1 do 
      resources :rentals
      resources :users
      resources :reservations
      resources :trips
      resources :reviews 
    end
  end
  #namespace fetch requests will have api/v1 before each fetch request

end

#fetch('http://localhost:3000/api/v1/rentals')
