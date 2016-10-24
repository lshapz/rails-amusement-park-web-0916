Rails.application.routes.draw do
root 'application#index'
resources :users
resources :rides
resources :attractions
resources :sessions, except: [:new]
get '/signout', to: "sessions#destroy", as: :signout
get '/signin', to: "sessions#new", as: :signin
end