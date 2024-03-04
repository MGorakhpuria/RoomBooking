Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "hotels#index"

  resources :hotels
  resources :bookings do
    member do
      patch 'cancel'
    end
  end
end
