Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "/actor",to: "actor#index" 
  # get "/actor/new", to: "actor#new"
  root to: "movies#index"
  resources :actors
  resources :movies
  resources :directors
  resources :geners
end
