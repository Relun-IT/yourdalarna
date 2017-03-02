Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root "home#index"
  resources :users, only: [:show]
  resources :trip_routes, only: [:new, :create, :show] do
    resources :trip_route_activities, only: [:new, :create]
  end
end
