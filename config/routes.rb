Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root "home#index"
  resources :users, only: [:show, :update]
  resources :events, only: [:show]
  resources :activities, only: [:show] do
    resources :activity_images, only: [:new, :create]
    resources :feedbacks, only: [:new, :create]
  end
  resources :trip_routes, only: [:show, :update, :new, :create] do
    resources :trip_route_activities, only: [:new, :create, :destroy]
  end
end
