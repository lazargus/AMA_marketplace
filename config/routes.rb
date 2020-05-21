Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  devise_for :users

  root to: 'rackets#index'

  resources :rackets, except: :index do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end

  resources :bookings, only: [:index, :destroy, :update]
end
