Rails.application.routes.draw do
  devise_for :users

  root to: 'rackets#index'

  resources :rackets, except: :index do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: :index
end
