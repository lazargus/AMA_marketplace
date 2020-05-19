Rails.application.routes.draw do
  devise_for :users
  root to: 'rackets#index'
  resources :rackets, except: :index
end
