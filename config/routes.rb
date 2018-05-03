Rails.application.routes.draw do
  resources :beers
  resources :patrons
  resources :purchases
  resources :flights
  resources :types
end
